package org.mozilla.javascript;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.mozilla.javascript.Token;
import org.mozilla.javascript.ast.ArrayComprehension;
import org.mozilla.javascript.ast.ArrayLiteral;
import org.mozilla.javascript.ast.Assignment;
import org.mozilla.javascript.ast.AstNode;
import org.mozilla.javascript.ast.AstRoot;
import org.mozilla.javascript.ast.Block;
import org.mozilla.javascript.ast.BreakStatement;
import org.mozilla.javascript.ast.CatchClause;
import org.mozilla.javascript.ast.Comment;
import org.mozilla.javascript.ast.ConditionalExpression;
import org.mozilla.javascript.ast.ContinueStatement;
import org.mozilla.javascript.ast.DestructuringForm;
import org.mozilla.javascript.ast.DoLoop;
import org.mozilla.javascript.ast.ElementGet;
import org.mozilla.javascript.ast.EmptyExpression;
import org.mozilla.javascript.ast.EmptyStatement;
import org.mozilla.javascript.ast.ErrorNode;
import org.mozilla.javascript.ast.ExpressionStatement;
import org.mozilla.javascript.ast.FunctionCall;
import org.mozilla.javascript.ast.FunctionNode;
import org.mozilla.javascript.ast.GeneratorExpression;
import org.mozilla.javascript.ast.GeneratorExpressionLoop;
import org.mozilla.javascript.ast.IdeErrorReporter;
import org.mozilla.javascript.ast.IfStatement;
import org.mozilla.javascript.ast.InfixExpression;
import org.mozilla.javascript.ast.Jump;
import org.mozilla.javascript.ast.KeywordLiteral;
import org.mozilla.javascript.ast.Label;
import org.mozilla.javascript.ast.LabeledStatement;
import org.mozilla.javascript.ast.LetNode;
import org.mozilla.javascript.ast.Loop;
import org.mozilla.javascript.ast.Name;
import org.mozilla.javascript.ast.NewExpression;
import org.mozilla.javascript.ast.NumberLiteral;
import org.mozilla.javascript.ast.ObjectLiteral;
import org.mozilla.javascript.ast.ObjectProperty;
import org.mozilla.javascript.ast.ParenthesizedExpression;
import org.mozilla.javascript.ast.PropertyGet;
import org.mozilla.javascript.ast.RegExpLiteral;
import org.mozilla.javascript.ast.ReturnStatement;
import org.mozilla.javascript.ast.Scope;
import org.mozilla.javascript.ast.ScriptNode;
import org.mozilla.javascript.ast.StringLiteral;
import org.mozilla.javascript.ast.SwitchCase;
import org.mozilla.javascript.ast.SwitchStatement;
import org.mozilla.javascript.ast.Symbol;
import org.mozilla.javascript.ast.ThrowStatement;
import org.mozilla.javascript.ast.TryStatement;
import org.mozilla.javascript.ast.UnaryExpression;
import org.mozilla.javascript.ast.VariableDeclaration;
import org.mozilla.javascript.ast.VariableInitializer;
import org.mozilla.javascript.ast.WhileLoop;
import org.mozilla.javascript.ast.WithStatement;
import org.mozilla.javascript.ast.XmlDotQuery;
import org.mozilla.javascript.ast.XmlElemRef;
import org.mozilla.javascript.ast.XmlExpression;
import org.mozilla.javascript.ast.XmlLiteral;
import org.mozilla.javascript.ast.XmlMemberGet;
import org.mozilla.javascript.ast.XmlPropRef;
import org.mozilla.javascript.ast.XmlRef;
import org.mozilla.javascript.ast.XmlString;
import org.mozilla.javascript.ast.Yield;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/Parser.class */
public class Parser {
    public static final int ARGC_LIMIT = 65536;
    static final int CLEAR_TI_MASK = 65535;
    private static final int GET_ENTRY = 2;
    private static final int PROP_ENTRY = 1;
    private static final int SET_ENTRY = 4;
    static final int TI_AFTER_EOL = 65536;
    static final int TI_CHECK_LABEL = 131072;
    boolean calledByCompileFunction;
    CompilerEnvirons compilerEnv;
    private int currentFlaggedToken;
    private Comment currentJsDocComment;
    private LabeledStatement currentLabel;
    Scope currentScope;
    ScriptNode currentScriptOrFn;
    private int currentToken;
    private int endFlags;
    private IdeErrorReporter errorCollector;
    private ErrorReporter errorReporter;
    private boolean inDestructuringAssignment;
    private boolean inForInit;
    protected boolean inUseStrictDirective;
    private Map<String, LabeledStatement> labelSet;
    private List<Jump> loopAndSwitchSet;
    private List<Loop> loopSet;
    protected int nestingOfFunction;
    private boolean parseFinished;
    private int prevNameTokenLineno;
    private int prevNameTokenStart;
    private String prevNameTokenString;
    private List<Comment> scannedComments;
    private char[] sourceChars;
    private String sourceURI;
    private int syntaxErrorCount;

    /* renamed from: ts */
    private TokenStream f782ts;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/Parser$ConditionData.class */
    public static class ConditionData {
        AstNode condition;

        /* renamed from: lp */
        int f783lp;

        /* renamed from: rp */
        int f784rp;

        private ConditionData() {
            this.f783lp = -1;
            this.f784rp = -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/Parser$ParserException.class */
    public static class ParserException extends RuntimeException {
        static final long serialVersionUID = 5882582646773765630L;

        private ParserException() {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/Parser$PerFunctionVariables.class */
    public class PerFunctionVariables {
        private Scope savedCurrentScope;
        private ScriptNode savedCurrentScriptOrFn;
        private int savedEndFlags;
        private boolean savedInForInit;
        private Map<String, LabeledStatement> savedLabelSet;
        private List<Jump> savedLoopAndSwitchSet;
        private List<Loop> savedLoopSet;

        /* JADX INFO: Access modifiers changed from: package-private */
        public PerFunctionVariables(FunctionNode functionNode) {
            this.savedCurrentScriptOrFn = Parser.this.currentScriptOrFn;
            Parser.this.currentScriptOrFn = functionNode;
            this.savedCurrentScope = Parser.this.currentScope;
            Parser.this.currentScope = functionNode;
            this.savedLabelSet = Parser.this.labelSet;
            Parser.this.labelSet = null;
            this.savedLoopSet = Parser.this.loopSet;
            Parser.this.loopSet = null;
            this.savedLoopAndSwitchSet = Parser.this.loopAndSwitchSet;
            Parser.this.loopAndSwitchSet = null;
            this.savedEndFlags = Parser.this.endFlags;
            Parser.this.endFlags = 0;
            this.savedInForInit = Parser.this.inForInit;
            Parser.this.inForInit = false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void restore() {
            Parser.this.currentScriptOrFn = this.savedCurrentScriptOrFn;
            Parser.this.currentScope = this.savedCurrentScope;
            Parser.this.labelSet = this.savedLabelSet;
            Parser.this.loopSet = this.savedLoopSet;
            Parser.this.loopAndSwitchSet = this.savedLoopAndSwitchSet;
            Parser.this.endFlags = this.savedEndFlags;
            Parser.this.inForInit = this.savedInForInit;
        }
    }

    public Parser() {
        this(new CompilerEnvirons());
    }

    public Parser(CompilerEnvirons compilerEnvirons) {
        this(compilerEnvirons, compilerEnvirons.getErrorReporter());
    }

    public Parser(CompilerEnvirons compilerEnvirons, ErrorReporter errorReporter) {
        this.currentFlaggedToken = 0;
        this.prevNameTokenString = "";
        this.compilerEnv = compilerEnvirons;
        this.errorReporter = errorReporter;
        if (errorReporter instanceof IdeErrorReporter) {
            this.errorCollector = (IdeErrorReporter) errorReporter;
        }
    }

    private void addError(String str, String str2, int i, int i2, int i3, String str3, int i4) {
        this.syntaxErrorCount++;
        String lookupMessage = lookupMessage(str, str2);
        if (this.errorCollector != null) {
            this.errorCollector.error(lookupMessage, this.sourceURI, i, i2);
        } else {
            this.errorReporter.error(lookupMessage, this.sourceURI, i3, str3, i4);
        }
    }

    private AstNode addExpr() throws IOException {
        AstNode mulExpr = mulExpr();
        while (true) {
            int peekToken = peekToken();
            int i = this.f782ts.tokenBeg;
            if (peekToken != 21 && peekToken != 22) {
                return mulExpr;
            }
            consumeToken();
            mulExpr = new InfixExpression(peekToken, mulExpr, mulExpr(), i);
        }
    }

    private void addStrictWarning(String str, String str2, int i, int i2, int i3, String str3, int i4) {
        if (this.compilerEnv.isStrictMode()) {
            addWarning(str, str2, i, i2, i3, str3, i4);
        }
    }

    private void addWarning(String str, String str2, int i, int i2, int i3, String str3, int i4) {
        String lookupMessage = lookupMessage(str, str2);
        if (this.compilerEnv.reportWarningAsError()) {
            addError(str, str2, i, i2, i3, str3, i4);
        } else if (this.errorCollector != null) {
            this.errorCollector.warning(lookupMessage, this.sourceURI, i, i2);
        } else {
            this.errorReporter.warning(lookupMessage, this.sourceURI, i3, str3, i4);
        }
    }

    private AstNode andExpr() throws IOException {
        AstNode bitOrExpr = bitOrExpr();
        AstNode astNode = bitOrExpr;
        if (matchToken(105)) {
            astNode = new InfixExpression(105, bitOrExpr, andExpr(), this.f782ts.tokenBeg);
        }
        return astNode;
    }

    /* JADX WARN: Finally extract failed */
    private List<AstNode> argumentList() throws IOException {
        if (matchToken(88)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        boolean z = this.inForInit;
        this.inForInit = false;
        do {
            try {
                if (peekToken() == 72) {
                    reportError("msg.yield.parenthesized");
                }
                AstNode assignExpr = assignExpr();
                if (peekToken() == 119) {
                    try {
                        arrayList.add(generatorExpression(assignExpr, 0, true));
                    } catch (IOException e) {
                    }
                } else {
                    arrayList.add(assignExpr);
                }
            } catch (Throwable th) {
                this.inForInit = z;
                throw th;
            }
        } while (matchToken(89));
        this.inForInit = z;
        mustMatchToken(88, "msg.no.paren.arg");
        return arrayList;
    }

    private AstNode arrayComprehension(AstNode astNode, int i) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (peekToken() == 119) {
            arrayList.add(arrayComprehensionLoop());
        }
        int i2 = -1;
        ConditionData conditionData = null;
        if (peekToken() == 112) {
            consumeToken();
            i2 = this.f782ts.tokenBeg - i;
            conditionData = condition();
        }
        mustMatchToken(84, "msg.no.bracket.arg");
        ArrayComprehension arrayComprehension = new ArrayComprehension(i, this.f782ts.tokenEnd - i);
        arrayComprehension.setResult(astNode);
        arrayComprehension.setLoops(arrayList);
        if (conditionData != null) {
            arrayComprehension.setIfPosition(i2);
            arrayComprehension.setFilter(conditionData.condition);
            arrayComprehension.setFilterLp(conditionData.f783lp - i);
            arrayComprehension.setFilterRp(conditionData.f784rp - i);
        }
        return arrayComprehension;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005f A[Catch: all -> 0x0154, TRY_LEAVE, TryCatch #0 {all -> 0x0154, blocks: (B:6:0x0024, B:8:0x002d, B:10:0x003d, B:11:0x004a, B:14:0x0053, B:16:0x005f, B:19:0x0073, B:26:0x008e, B:27:0x0098, B:28:0x00a7, B:30:0x00b3, B:33:0x00c2, B:35:0x00d2, B:37:0x00dd, B:39:0x00ee, B:41:0x0100, B:43:0x0111, B:47:0x0140), top: B:53:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a7 A[Catch: all -> 0x0154, TRY_ENTER, TryCatch #0 {all -> 0x0154, blocks: (B:6:0x0024, B:8:0x002d, B:10:0x003d, B:11:0x004a, B:14:0x0053, B:16:0x005f, B:19:0x0073, B:26:0x008e, B:27:0x0098, B:28:0x00a7, B:30:0x00b3, B:33:0x00c2, B:35:0x00d2, B:37:0x00dd, B:39:0x00ee, B:41:0x0100, B:43:0x0111, B:47:0x0140), top: B:53:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00c2 A[Catch: all -> 0x0154, TRY_ENTER, TryCatch #0 {all -> 0x0154, blocks: (B:6:0x0024, B:8:0x002d, B:10:0x003d, B:11:0x004a, B:14:0x0053, B:16:0x005f, B:19:0x0073, B:26:0x008e, B:27:0x0098, B:28:0x00a7, B:30:0x00b3, B:33:0x00c2, B:35:0x00d2, B:37:0x00dd, B:39:0x00ee, B:41:0x0100, B:43:0x0111, B:47:0x0140), top: B:53:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00dd A[Catch: all -> 0x0154, TRY_LEAVE, TryCatch #0 {all -> 0x0154, blocks: (B:6:0x0024, B:8:0x002d, B:10:0x003d, B:11:0x004a, B:14:0x0053, B:16:0x005f, B:19:0x0073, B:26:0x008e, B:27:0x0098, B:28:0x00a7, B:30:0x00b3, B:33:0x00c2, B:35:0x00d2, B:37:0x00dd, B:39:0x00ee, B:41:0x0100, B:43:0x0111, B:47:0x0140), top: B:53:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0100 A[Catch: all -> 0x0154, TRY_LEAVE, TryCatch #0 {all -> 0x0154, blocks: (B:6:0x0024, B:8:0x002d, B:10:0x003d, B:11:0x004a, B:14:0x0053, B:16:0x005f, B:19:0x0073, B:26:0x008e, B:27:0x0098, B:28:0x00a7, B:30:0x00b3, B:33:0x00c2, B:35:0x00d2, B:37:0x00dd, B:39:0x00ee, B:41:0x0100, B:43:0x0111, B:47:0x0140), top: B:53:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x013d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.mozilla.javascript.ast.ArrayComprehensionLoop arrayComprehensionLoop() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.Parser.arrayComprehensionLoop():org.mozilla.javascript.ast.ArrayComprehensionLoop");
    }

    private AstNode arrayLiteral() throws IOException {
        int peekToken;
        if (this.currentToken != 83) {
            codeBug();
        }
        int i = this.f782ts.tokenBeg;
        int i2 = this.f782ts.tokenEnd;
        ArrayList<AstNode> arrayList = new ArrayList();
        ArrayLiteral arrayLiteral = new ArrayLiteral(i);
        int i3 = 1;
        int i4 = 0;
        while (true) {
            int i5 = -1;
            while (true) {
                peekToken = peekToken();
                if (peekToken != 89) {
                    break;
                }
                consumeToken();
                i5 = this.f782ts.tokenEnd;
                if (i3 == 0) {
                    i3 = 1;
                } else {
                    arrayList.add(new EmptyExpression(this.f782ts.tokenBeg, 1));
                    i4++;
                }
            }
            if (peekToken == 84) {
                consumeToken();
                int i6 = this.f782ts.tokenEnd;
                arrayLiteral.setDestructuringLength(arrayList.size() + i3);
                arrayLiteral.setSkipCount(i4);
                i2 = i6;
                if (i5 != -1) {
                    warnTrailingComma(i, arrayList, i5);
                    i2 = i6;
                }
            } else if (peekToken == 119 && i3 == 0 && arrayList.size() == 1) {
                return arrayComprehension((AstNode) arrayList.get(0), i);
            } else {
                if (peekToken == 0) {
                    reportError("msg.no.bracket.arg");
                    break;
                }
                if (i3 == 0) {
                    reportError("msg.no.bracket.arg");
                }
                arrayList.add(assignExpr());
                i3 = 0;
            }
        }
        for (AstNode astNode : arrayList) {
            arrayLiteral.addElement(astNode);
        }
        arrayLiteral.setLength(i2 - i);
        return arrayLiteral;
    }

    private AstNode assignExpr() throws IOException {
        AstNode astNode;
        int peekToken = peekToken();
        if (peekToken == 72) {
            return returnOrYield(peekToken, true);
        }
        AstNode condExpr = condExpr();
        int peekToken2 = peekToken();
        if (90 > peekToken2 || peekToken2 > 101) {
            astNode = condExpr;
            if (peekToken2 == 82) {
                astNode = condExpr;
                if (this.currentJsDocComment != null) {
                    condExpr.setJsDocNode(getAndResetJsDoc());
                    astNode = condExpr;
                }
            }
        } else {
            consumeToken();
            Comment andResetJsDoc = getAndResetJsDoc();
            markDestructuring(condExpr);
            astNode = new Assignment(peekToken2, condExpr, assignExpr(), this.f782ts.tokenBeg);
            if (andResetJsDoc != null) {
                astNode.setJsDocNode(andResetJsDoc);
            }
        }
        return astNode;
    }

    private AstNode attributeAccess() throws IOException {
        int nextToken = nextToken();
        int i = this.f782ts.tokenBeg;
        if (nextToken == 23) {
            saveNameTokenData(this.f782ts.tokenBeg, "*", this.f782ts.lineno);
            return propertyName(i, "*", 0);
        } else if (nextToken == 39) {
            return propertyName(i, this.f782ts.getString(), 0);
        } else {
            if (nextToken == 83) {
                return xmlElemRef(i, null, -1);
            }
            reportError("msg.no.name.after.xmlAttr");
            return makeErrorNode();
        }
    }

    private void autoInsertSemicolon(AstNode astNode) throws IOException {
        int peekFlaggedToken = peekFlaggedToken();
        int position = astNode.getPosition();
        int i = 65535 & peekFlaggedToken;
        if (i != 82) {
            if (i != 86) {
                switch (i) {
                    case -1:
                    case 0:
                        break;
                    default:
                        if ((peekFlaggedToken & 65536) == 0) {
                            reportError("msg.no.semi.stmt");
                            return;
                        } else {
                            warnMissingSemi(position, nodeEnd(astNode));
                            return;
                        }
                }
            }
            warnMissingSemi(position, nodeEnd(astNode));
            return;
        }
        consumeToken();
        astNode.setLength(this.f782ts.tokenEnd - position);
    }

    private AstNode bitAndExpr() throws IOException {
        AstNode eqExpr = eqExpr();
        while (matchToken(11)) {
            eqExpr = new InfixExpression(11, eqExpr, eqExpr(), this.f782ts.tokenBeg);
        }
        return eqExpr;
    }

    private AstNode bitOrExpr() throws IOException {
        AstNode bitXorExpr = bitXorExpr();
        while (matchToken(9)) {
            bitXorExpr = new InfixExpression(9, bitXorExpr, bitXorExpr(), this.f782ts.tokenBeg);
        }
        return bitXorExpr;
    }

    private AstNode bitXorExpr() throws IOException {
        AstNode bitAndExpr = bitAndExpr();
        while (matchToken(10)) {
            bitAndExpr = new InfixExpression(10, bitAndExpr, bitAndExpr(), this.f782ts.tokenBeg);
        }
        return bitAndExpr;
    }

    private AstNode block() throws IOException {
        if (this.currentToken != 85) {
            codeBug();
        }
        consumeToken();
        int i = this.f782ts.tokenBeg;
        Scope scope = new Scope(i);
        scope.setLineno(this.f782ts.lineno);
        pushScope(scope);
        try {
            statements(scope);
            mustMatchToken(86, "msg.no.brace.block");
            scope.setLength(this.f782ts.tokenEnd - i);
            return scope;
        } finally {
            popScope();
        }
    }

    private BreakStatement breakStatement() throws IOException {
        Name name;
        if (this.currentToken != 120) {
            codeBug();
        }
        consumeToken();
        int i = this.f782ts.lineno;
        int i2 = this.f782ts.tokenBeg;
        int i3 = this.f782ts.tokenEnd;
        Label label = null;
        if (peekTokenOrEOL() == 39) {
            name = createNameNode();
            i3 = getNodeEnd(name);
        } else {
            name = null;
        }
        LabeledStatement matchJumpLabelName = matchJumpLabelName();
        if (matchJumpLabelName != null) {
            label = matchJumpLabelName.getFirstLabel();
        }
        Jump jump = label;
        if (label == null) {
            jump = label;
            if (name == null) {
                if (this.loopAndSwitchSet == null || this.loopAndSwitchSet.size() == 0) {
                    jump = label;
                    if (name == null) {
                        reportError("msg.bad.break", i2, i3 - i2);
                        jump = label;
                    }
                } else {
                    jump = this.loopAndSwitchSet.get(this.loopAndSwitchSet.size() - 1);
                }
            }
        }
        BreakStatement breakStatement = new BreakStatement(i2, i3 - i2);
        breakStatement.setBreakLabel(name);
        if (jump != null) {
            breakStatement.setBreakTarget(jump);
        }
        breakStatement.setLineno(i);
        return breakStatement;
    }

    private void checkBadIncDec(UnaryExpression unaryExpression) {
        int type = removeParens(unaryExpression.getOperand()).getType();
        if (type != 39 && type != 33 && type != 36 && type != 67 && type != 38) {
            reportError(unaryExpression.getType() == 106 ? "msg.bad.incr" : "msg.bad.decr");
        }
    }

    private void checkCallRequiresActivation(AstNode astNode) {
        if ((astNode.getType() == 39 && "eval".equals(((Name) astNode).getIdentifier())) || (astNode.getType() == 33 && "eval".equals(((PropertyGet) astNode).getProperty().getIdentifier()))) {
            setRequiresActivation();
        }
    }

    private RuntimeException codeBug() throws RuntimeException {
        throw Kit.codeBug("ts.cursor=" + this.f782ts.cursor + ", ts.tokenBeg=" + this.f782ts.tokenBeg + ", currentToken=" + this.currentToken);
    }

    /* JADX WARN: Finally extract failed */
    private AstNode condExpr() throws IOException {
        AstNode orExpr = orExpr();
        ConditionalExpression conditionalExpression = orExpr;
        if (matchToken(102)) {
            int i = this.f782ts.lineno;
            int i2 = this.f782ts.tokenBeg;
            int i3 = -1;
            boolean z = this.inForInit;
            this.inForInit = false;
            try {
                AstNode assignExpr = assignExpr();
                this.inForInit = z;
                if (mustMatchToken(103, "msg.no.colon.cond")) {
                    i3 = this.f782ts.tokenBeg;
                }
                AstNode assignExpr2 = assignExpr();
                int position = orExpr.getPosition();
                ConditionalExpression conditionalExpression2 = new ConditionalExpression(position, getNodeEnd(assignExpr2) - position);
                conditionalExpression2.setLineno(i);
                conditionalExpression2.setTestExpression(orExpr);
                conditionalExpression2.setTrueExpression(assignExpr);
                conditionalExpression2.setFalseExpression(assignExpr2);
                conditionalExpression2.setQuestionMarkPosition(i2 - position);
                conditionalExpression2.setColonPosition(i3 - position);
                conditionalExpression = conditionalExpression2;
            } catch (Throwable th) {
                this.inForInit = z;
                throw th;
            }
        }
        return conditionalExpression;
    }

    private ConditionData condition() throws IOException {
        ConditionData conditionData = new ConditionData();
        if (mustMatchToken(87, "msg.no.paren.cond")) {
            conditionData.f783lp = this.f782ts.tokenBeg;
        }
        conditionData.condition = expr();
        if (mustMatchToken(88, "msg.no.paren.after.cond")) {
            conditionData.f784rp = this.f782ts.tokenBeg;
        }
        if (conditionData.condition instanceof Assignment) {
            addStrictWarning("msg.equal.as.assign", "", conditionData.condition.getPosition(), conditionData.condition.getLength());
        }
        return conditionData;
    }

    private void consumeToken() {
        this.currentFlaggedToken = 0;
    }

    private ContinueStatement continueStatement() throws IOException {
        Name name;
        if (this.currentToken != 121) {
            codeBug();
        }
        consumeToken();
        int i = this.f782ts.lineno;
        int i2 = this.f782ts.tokenBeg;
        int i3 = this.f782ts.tokenEnd;
        Loop loop = null;
        if (peekTokenOrEOL() == 39) {
            name = createNameNode();
            i3 = getNodeEnd(name);
        } else {
            name = null;
        }
        LabeledStatement matchJumpLabelName = matchJumpLabelName();
        if (matchJumpLabelName != null || name != null) {
            if (matchJumpLabelName == null || !(matchJumpLabelName.getStatement() instanceof Loop)) {
                reportError("msg.continue.nonloop", i2, i3 - i2);
            }
            if (matchJumpLabelName != null) {
                loop = (Loop) matchJumpLabelName.getStatement();
            }
        } else if (this.loopSet == null || this.loopSet.size() == 0) {
            reportError("msg.continue.outside");
        } else {
            loop = this.loopSet.get(this.loopSet.size() - 1);
        }
        ContinueStatement continueStatement = new ContinueStatement(i2, i3 - i2);
        if (loop != null) {
            continueStatement.setTarget(loop);
        }
        continueStatement.setLabel(name);
        continueStatement.setLineno(i);
        return continueStatement;
    }

    private Name createNameNode() {
        return createNameNode(false, 39);
    }

    private Name createNameNode(boolean z, int i) {
        int i2 = this.f782ts.tokenBeg;
        String string = this.f782ts.getString();
        int i3 = this.f782ts.lineno;
        if (!"".equals(this.prevNameTokenString)) {
            i2 = this.prevNameTokenStart;
            string = this.prevNameTokenString;
            i3 = this.prevNameTokenLineno;
            this.prevNameTokenStart = 0;
            this.prevNameTokenString = "";
            this.prevNameTokenLineno = 0;
        }
        String str = string;
        if (string == null) {
            if (this.compilerEnv.isIdeMode()) {
                str = "";
            } else {
                codeBug();
                str = string;
            }
        }
        Name name = new Name(i2, str);
        name.setLineno(i3);
        if (z) {
            checkActivationName(str, i);
        }
        return name;
    }

    private StringLiteral createStringLiteral() {
        int i = this.f782ts.tokenBeg;
        StringLiteral stringLiteral = new StringLiteral(i, this.f782ts.tokenEnd - i);
        stringLiteral.setLineno(this.f782ts.lineno);
        stringLiteral.setValue(this.f782ts.getString());
        stringLiteral.setQuoteCharacter(this.f782ts.getQuoteChar());
        return stringLiteral;
    }

    private AstNode defaultXmlNamespace() throws IOException {
        if (this.currentToken != 116) {
            codeBug();
        }
        consumeToken();
        mustHaveXML();
        setRequiresActivation();
        int i = this.f782ts.lineno;
        int i2 = this.f782ts.tokenBeg;
        if (!matchToken(39) || !"xml".equals(this.f782ts.getString())) {
            reportError("msg.bad.namespace");
        }
        if (!matchToken(39) || !"namespace".equals(this.f782ts.getString())) {
            reportError("msg.bad.namespace");
        }
        if (!matchToken(90)) {
            reportError("msg.bad.namespace");
        }
        AstNode expr = expr();
        UnaryExpression unaryExpression = new UnaryExpression(i2, getNodeEnd(expr) - i2);
        unaryExpression.setOperator(74);
        unaryExpression.setOperand(expr);
        unaryExpression.setLineno(i);
        return new ExpressionStatement((AstNode) unaryExpression, true);
    }

    private AstNode destructuringPrimaryExpr() throws IOException, ParserException {
        try {
            this.inDestructuringAssignment = true;
            return primaryExpr();
        } finally {
            this.inDestructuringAssignment = false;
        }
    }

    /* JADX WARN: Finally extract failed */
    private DoLoop doLoop() throws IOException {
        if (this.currentToken != 118) {
            codeBug();
        }
        consumeToken();
        int i = this.f782ts.tokenBeg;
        DoLoop doLoop = new DoLoop(i);
        doLoop.setLineno(this.f782ts.lineno);
        enterLoop(doLoop);
        try {
            AstNode statement = statement();
            mustMatchToken(117, "msg.no.while.do");
            doLoop.setWhilePosition(this.f782ts.tokenBeg - i);
            ConditionData condition = condition();
            doLoop.setCondition(condition.condition);
            doLoop.setParens(condition.f783lp - i, condition.f784rp - i);
            int nodeEnd = getNodeEnd(statement);
            doLoop.setBody(statement);
            exitLoop();
            if (matchToken(82)) {
                nodeEnd = this.f782ts.tokenEnd;
            }
            doLoop.setLength(nodeEnd - i);
            return doLoop;
        } catch (Throwable th) {
            exitLoop();
            throw th;
        }
    }

    private void enterLoop(Loop loop) {
        if (this.loopSet == null) {
            this.loopSet = new ArrayList();
        }
        this.loopSet.add(loop);
        if (this.loopAndSwitchSet == null) {
            this.loopAndSwitchSet = new ArrayList();
        }
        this.loopAndSwitchSet.add(loop);
        pushScope(loop);
        if (this.currentLabel != null) {
            this.currentLabel.setStatement(loop);
            this.currentLabel.getFirstLabel().setLoop(loop);
            loop.setRelative(-this.currentLabel.getPosition());
        }
    }

    private void enterSwitch(SwitchStatement switchStatement) {
        if (this.loopAndSwitchSet == null) {
            this.loopAndSwitchSet = new ArrayList();
        }
        this.loopAndSwitchSet.add(switchStatement);
    }

    private AstNode eqExpr() throws IOException {
        AstNode relExpr = relExpr();
        while (true) {
            int peekToken = peekToken();
            int i = this.f782ts.tokenBeg;
            switch (peekToken) {
                case 12:
                case 13:
                case 46:
                case 47:
                    consumeToken();
                    int i2 = peekToken;
                    if (this.compilerEnv.getLanguageVersion() == 120) {
                        if (peekToken == 12) {
                            i2 = 46;
                        } else {
                            i2 = peekToken;
                            if (peekToken == 13) {
                                i2 = 47;
                            }
                        }
                    }
                    relExpr = new InfixExpression(i2, relExpr, relExpr(), i);
                default:
                    return relExpr;
            }
        }
    }

    private void exitLoop() {
        Loop remove = this.loopSet.remove(this.loopSet.size() - 1);
        this.loopAndSwitchSet.remove(this.loopAndSwitchSet.size() - 1);
        if (remove.getParent() != null) {
            remove.setRelative(remove.getParent().getPosition());
        }
        popScope();
    }

    private void exitSwitch() {
        this.loopAndSwitchSet.remove(this.loopAndSwitchSet.size() - 1);
    }

    private AstNode expr() throws IOException {
        AstNode assignExpr = assignExpr();
        int position = assignExpr.getPosition();
        while (matchToken(89)) {
            int i = this.f782ts.tokenBeg;
            if (this.compilerEnv.isStrictMode() && !assignExpr.hasSideEffects()) {
                addStrictWarning("msg.no.side.effects", "", position, nodeEnd(assignExpr) - position);
            }
            if (peekToken() == 72) {
                reportError("msg.yield.parenthesized");
            }
            assignExpr = new InfixExpression(89, assignExpr, assignExpr(), i);
        }
        return assignExpr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007c A[Catch: all -> 0x0226, TRY_LEAVE, TryCatch #2 {all -> 0x0226, blocks: (B:6:0x002f, B:9:0x0042, B:11:0x0052, B:13:0x0063, B:16:0x0070, B:18:0x007c, B:20:0x008d, B:22:0x00a0, B:24:0x00be, B:26:0x00d1, B:27:0x00f2, B:29:0x00f9, B:31:0x0114, B:32:0x0130, B:35:0x0139, B:37:0x0145, B:40:0x0155, B:42:0x0168, B:44:0x0179, B:46:0x0182, B:48:0x01aa, B:50:0x01ce, B:54:0x01fc, B:52:0x01e2), top: B:66:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a0 A[Catch: all -> 0x0226, TRY_LEAVE, TryCatch #2 {all -> 0x0226, blocks: (B:6:0x002f, B:9:0x0042, B:11:0x0052, B:13:0x0063, B:16:0x0070, B:18:0x007c, B:20:0x008d, B:22:0x00a0, B:24:0x00be, B:26:0x00d1, B:27:0x00f2, B:29:0x00f9, B:31:0x0114, B:32:0x0130, B:35:0x0139, B:37:0x0145, B:40:0x0155, B:42:0x0168, B:44:0x0179, B:46:0x0182, B:48:0x01aa, B:50:0x01ce, B:54:0x01fc, B:52:0x01e2), top: B:66:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00be A[Catch: all -> 0x0226, TRY_ENTER, TryCatch #2 {all -> 0x0226, blocks: (B:6:0x002f, B:9:0x0042, B:11:0x0052, B:13:0x0063, B:16:0x0070, B:18:0x007c, B:20:0x008d, B:22:0x00a0, B:24:0x00be, B:26:0x00d1, B:27:0x00f2, B:29:0x00f9, B:31:0x0114, B:32:0x0130, B:35:0x0139, B:37:0x0145, B:40:0x0155, B:42:0x0168, B:44:0x0179, B:46:0x0182, B:48:0x01aa, B:50:0x01ce, B:54:0x01fc, B:52:0x01e2), top: B:66:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0145 A[Catch: all -> 0x0226, TryCatch #2 {all -> 0x0226, blocks: (B:6:0x002f, B:9:0x0042, B:11:0x0052, B:13:0x0063, B:16:0x0070, B:18:0x007c, B:20:0x008d, B:22:0x00a0, B:24:0x00be, B:26:0x00d1, B:27:0x00f2, B:29:0x00f9, B:31:0x0114, B:32:0x0130, B:35:0x0139, B:37:0x0145, B:40:0x0155, B:42:0x0168, B:44:0x0179, B:46:0x0182, B:48:0x01aa, B:50:0x01ce, B:54:0x01fc, B:52:0x01e2), top: B:66:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0155 A[Catch: all -> 0x0226, TRY_ENTER, TryCatch #2 {all -> 0x0226, blocks: (B:6:0x002f, B:9:0x0042, B:11:0x0052, B:13:0x0063, B:16:0x0070, B:18:0x007c, B:20:0x008d, B:22:0x00a0, B:24:0x00be, B:26:0x00d1, B:27:0x00f2, B:29:0x00f9, B:31:0x0114, B:32:0x0130, B:35:0x0139, B:37:0x0145, B:40:0x0155, B:42:0x0168, B:44:0x0179, B:46:0x0182, B:48:0x01aa, B:50:0x01ce, B:54:0x01fc, B:52:0x01e2), top: B:66:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01aa A[Catch: all -> 0x0226, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0226, blocks: (B:6:0x002f, B:9:0x0042, B:11:0x0052, B:13:0x0063, B:16:0x0070, B:18:0x007c, B:20:0x008d, B:22:0x00a0, B:24:0x00be, B:26:0x00d1, B:27:0x00f2, B:29:0x00f9, B:31:0x0114, B:32:0x0130, B:35:0x0139, B:37:0x0145, B:40:0x0155, B:42:0x0168, B:44:0x0179, B:46:0x0182, B:48:0x01aa, B:50:0x01ce, B:54:0x01fc, B:52:0x01e2), top: B:66:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0207  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.mozilla.javascript.ast.Loop forLoop() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 567
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.Parser.forLoop():org.mozilla.javascript.ast.Loop");
    }

    private AstNode forLoopInit(int i) throws IOException {
        AstNode astNode;
        try {
            this.inForInit = true;
            if (i == 82) {
                astNode = new EmptyExpression(this.f782ts.tokenBeg, 1);
                astNode.setLineno(this.f782ts.lineno);
            } else if (i == 122 || i == 153) {
                consumeToken();
                astNode = variables(i, this.f782ts.tokenBeg, false);
            } else {
                astNode = expr();
                markDestructuring(astNode);
            }
            return astNode;
        } finally {
            this.inForInit = false;
        }
    }

    private FunctionNode function(int i) throws IOException {
        Name name;
        int i2 = this.f782ts.lineno;
        int i3 = this.f782ts.tokenBeg;
        AstNode astNode = null;
        astNode = null;
        if (matchToken(39)) {
            Name createNameNode = createNameNode(true, 39);
            if (this.inUseStrictDirective) {
                String identifier = createNameNode.getIdentifier();
                if ("eval".equals(identifier) || "arguments".equals(identifier)) {
                    reportError("msg.bad.id.strict", identifier);
                }
            }
            name = createNameNode;
            if (!matchToken(87)) {
                name = createNameNode;
                if (this.compilerEnv.isAllowMemberExprAsFunctionName()) {
                    astNode = memberExprTail(false, createNameNode);
                    name = null;
                }
                mustMatchToken(87, "msg.no.paren.parms");
            }
        } else if (matchToken(87)) {
            name = null;
        } else {
            astNode = this.compilerEnv.isAllowMemberExprAsFunctionName() ? memberExpr(false) : null;
            mustMatchToken(87, "msg.no.paren.parms");
            name = null;
        }
        int i4 = this.currentToken == 87 ? this.f782ts.tokenBeg : -1;
        if (!((astNode != null ? 2 : i) == 2 || name == null || name.length() <= 0)) {
            defineSymbol(109, name.getIdentifier());
        }
        FunctionNode functionNode = new FunctionNode(i3, name);
        functionNode.setFunctionType(i);
        if (i4 != -1) {
            functionNode.setLp(i4 - i3);
        }
        functionNode.setJsDocNode(getAndResetJsDoc());
        PerFunctionVariables perFunctionVariables = new PerFunctionVariables(functionNode);
        try {
            parseFunctionParams(functionNode);
            functionNode.setBody(parseFunctionBody());
            functionNode.setEncodedSourceBounds(i3, this.f782ts.tokenEnd);
            functionNode.setLength(this.f782ts.tokenEnd - i3);
            if (this.compilerEnv.isStrictMode() && !functionNode.getBody().hasConsistentReturnUsage()) {
                addStrictWarning((name == null || name.length() <= 0) ? "msg.anon.no.return.value" : "msg.no.return.value", name == null ? "" : name.getIdentifier());
            }
            if (astNode != null) {
                Kit.codeBug();
                functionNode.setMemberExprNode(astNode);
            }
            functionNode.setSourceName(this.sourceURI);
            functionNode.setBaseLineno(i2);
            functionNode.setEndLineno(this.f782ts.lineno);
            if (this.compilerEnv.isIdeMode()) {
                functionNode.setParentScope(this.currentScope);
            }
            return functionNode;
        } finally {
            perFunctionVariables.restore();
        }
    }

    private AstNode generatorExpression(AstNode astNode, int i) throws IOException {
        return generatorExpression(astNode, i, false);
    }

    private AstNode generatorExpression(AstNode astNode, int i, boolean z) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (peekToken() == 119) {
            arrayList.add(generatorExpressionLoop());
        }
        int i2 = -1;
        ConditionData conditionData = null;
        if (peekToken() == 112) {
            consumeToken();
            i2 = this.f782ts.tokenBeg - i;
            conditionData = condition();
        }
        if (!z) {
            mustMatchToken(88, "msg.no.paren.let");
        }
        GeneratorExpression generatorExpression = new GeneratorExpression(i, this.f782ts.tokenEnd - i);
        generatorExpression.setResult(astNode);
        generatorExpression.setLoops(arrayList);
        if (conditionData != null) {
            generatorExpression.setIfPosition(i2);
            generatorExpression.setFilter(conditionData.condition);
            generatorExpression.setFilterLp(conditionData.f783lp - i);
            generatorExpression.setFilterRp(conditionData.f784rp - i);
        }
        return generatorExpression;
    }

    private GeneratorExpressionLoop generatorExpressionLoop() throws IOException {
        if (nextToken() != 119) {
            codeBug();
        }
        int i = this.f782ts.tokenBeg;
        GeneratorExpressionLoop generatorExpressionLoop = new GeneratorExpressionLoop(i);
        pushScope(generatorExpressionLoop);
        try {
            int i2 = -1;
            int i3 = mustMatchToken(87, "msg.no.paren.for") ? this.f782ts.tokenBeg - i : -1;
            AstNode astNode = null;
            int peekToken = peekToken();
            if (peekToken == 39) {
                consumeToken();
                astNode = createNameNode();
            } else if (peekToken == 83 || peekToken == 85) {
                astNode = destructuringPrimaryExpr();
                markDestructuring(astNode);
            } else {
                reportError("msg.bad.var");
            }
            if (astNode.getType() == 39) {
                defineSymbol(153, this.f782ts.getString(), true);
            }
            int i4 = mustMatchToken(52, "msg.in.after.for.name") ? this.f782ts.tokenBeg - i : -1;
            AstNode expr = expr();
            if (mustMatchToken(88, "msg.no.paren.for.ctrl")) {
                i2 = this.f782ts.tokenBeg - i;
            }
            generatorExpressionLoop.setLength(this.f782ts.tokenEnd - i);
            generatorExpressionLoop.setIterator(astNode);
            generatorExpressionLoop.setIteratedObject(expr);
            generatorExpressionLoop.setInPosition(i4);
            generatorExpressionLoop.setParens(i3, i2);
            return generatorExpressionLoop;
        } finally {
            popScope();
        }
    }

    private Comment getAndResetJsDoc() {
        Comment comment = this.currentJsDocComment;
        this.currentJsDocComment = null;
        return comment;
    }

    private String getDirective(AstNode astNode) {
        if (!(astNode instanceof ExpressionStatement)) {
            return null;
        }
        AstNode expression = ((ExpressionStatement) astNode).getExpression();
        if (expression instanceof StringLiteral) {
            return ((StringLiteral) expression).getValue();
        }
        return null;
    }

    private int getNodeEnd(AstNode astNode) {
        return astNode.getPosition() + astNode.getLength();
    }

    private int getNumberOfEols(String str) {
        int i = 0;
        for (int length = str.length() - 1; length >= 0; length--) {
            i = i;
            if (str.charAt(length) == '\n') {
                i++;
            }
        }
        return i;
    }

    private ObjectProperty getterSetterProperty(int i, AstNode astNode, boolean z) throws IOException {
        FunctionNode function = function(2);
        Name functionName = function.getFunctionName();
        if (!(functionName == null || functionName.length() == 0)) {
            reportError("msg.bad.prop");
        }
        ObjectProperty objectProperty = new ObjectProperty(i);
        if (z) {
            objectProperty.setIsGetter();
            function.setFunctionIsGetter();
        } else {
            objectProperty.setIsSetter();
            function.setFunctionIsSetter();
        }
        int nodeEnd = getNodeEnd(function);
        objectProperty.setLeft(astNode);
        objectProperty.setRight(function);
        objectProperty.setLength(nodeEnd - i);
        return objectProperty;
    }

    private IfStatement ifStatement() throws IOException {
        if (this.currentToken != 112) {
            codeBug();
        }
        consumeToken();
        int i = this.f782ts.tokenBeg;
        int i2 = this.f782ts.lineno;
        int i3 = -1;
        ConditionData condition = condition();
        AstNode statement = statement();
        AstNode astNode = null;
        if (matchToken(113)) {
            i3 = this.f782ts.tokenBeg - i;
            astNode = statement();
        }
        IfStatement ifStatement = new IfStatement(i, getNodeEnd(astNode != null ? astNode : statement) - i);
        ifStatement.setCondition(condition.condition);
        ifStatement.setParens(condition.f783lp - i, condition.f784rp - i);
        ifStatement.setThenPart(statement);
        ifStatement.setElsePart(astNode);
        ifStatement.setElsePosition(i3);
        ifStatement.setLineno(i2);
        return ifStatement;
    }

    private AstNode let(boolean z, int i) throws IOException {
        LetNode letNode = new LetNode(i);
        letNode.setLineno(this.f782ts.lineno);
        if (mustMatchToken(87, "msg.no.paren.after.let")) {
            letNode.setLp(this.f782ts.tokenBeg - i);
        }
        pushScope(letNode);
        try {
            letNode.setVariables(variables(153, this.f782ts.tokenBeg, z));
            if (mustMatchToken(88, "msg.no.paren.let")) {
                letNode.setRp(this.f782ts.tokenBeg - i);
            }
            if (!z || peekToken() != 85) {
                AstNode expr = expr();
                letNode.setLength(getNodeEnd(expr) - i);
                letNode.setBody(expr);
                if (z) {
                    ExpressionStatement expressionStatement = new ExpressionStatement(letNode, !insideFunction());
                    expressionStatement.setLineno(letNode.getLineno());
                    return expressionStatement;
                }
            } else {
                consumeToken();
                int i2 = this.f782ts.tokenBeg;
                AstNode statements = statements();
                mustMatchToken(86, "msg.no.curly.let");
                statements.setLength(this.f782ts.tokenEnd - i2);
                letNode.setLength(this.f782ts.tokenEnd - i);
                letNode.setBody(statements);
                letNode.setType(153);
            }
            return letNode;
        } finally {
            popScope();
        }
    }

    private AstNode letStatement() throws IOException {
        if (this.currentToken != 153) {
            codeBug();
        }
        consumeToken();
        int i = this.f782ts.lineno;
        int i2 = this.f782ts.tokenBeg;
        AstNode let = peekToken() == 87 ? let(true, i2) : variables(153, i2, true);
        let.setLineno(i);
        return let;
    }

    private int lineBeginningFor(int i) {
        int i2;
        if (this.sourceChars == null) {
            return -1;
        }
        if (i <= 0) {
            return 0;
        }
        char[] cArr = this.sourceChars;
        int i3 = i;
        if (i >= cArr.length) {
            i3 = cArr.length - 1;
        }
        do {
            i2 = i3 - 1;
            if (i2 < 0) {
                return 0;
            }
            i3 = i2;
        } while (!ScriptRuntime.isJSLineTerminator(cArr[i2]));
        return i2 + 1;
    }

    private ErrorNode makeErrorNode() {
        ErrorNode errorNode = new ErrorNode(this.f782ts.tokenBeg, this.f782ts.tokenEnd - this.f782ts.tokenBeg);
        errorNode.setLineno(this.f782ts.lineno);
        return errorNode;
    }

    private LabeledStatement matchJumpLabelName() throws IOException {
        LabeledStatement labeledStatement = null;
        LabeledStatement labeledStatement2 = null;
        if (peekTokenOrEOL() == 39) {
            consumeToken();
            if (this.labelSet != null) {
                labeledStatement2 = this.labelSet.get(this.f782ts.getString());
            }
            labeledStatement = labeledStatement2;
            if (labeledStatement2 == null) {
                reportError("msg.undef.label");
                labeledStatement = labeledStatement2;
            }
        }
        return labeledStatement;
    }

    private boolean matchToken(int i) throws IOException {
        if (peekToken() != i) {
            return false;
        }
        consumeToken();
        return true;
    }

    private AstNode memberExpr(boolean z) throws IOException {
        AstNode astNode;
        int peekToken = peekToken();
        int i = this.f782ts.lineno;
        if (peekToken != 30) {
            astNode = primaryExpr();
        } else {
            consumeToken();
            int i2 = this.f782ts.tokenBeg;
            NewExpression newExpression = new NewExpression(i2);
            AstNode memberExpr = memberExpr(false);
            int nodeEnd = getNodeEnd(memberExpr);
            newExpression.setTarget(memberExpr);
            if (matchToken(87)) {
                int i3 = this.f782ts.tokenBeg;
                List<AstNode> argumentList = argumentList();
                if (argumentList != null && argumentList.size() > 65536) {
                    reportError("msg.too.many.constructor.args");
                }
                int i4 = this.f782ts.tokenBeg;
                nodeEnd = this.f782ts.tokenEnd;
                if (argumentList != null) {
                    newExpression.setArguments(argumentList);
                }
                newExpression.setParens(i3 - i2, i4 - i2);
            }
            if (matchToken(85)) {
                ObjectLiteral objectLiteral = objectLiteral();
                nodeEnd = getNodeEnd(objectLiteral);
                newExpression.setInitializer(objectLiteral);
            }
            newExpression.setLength(nodeEnd - i2);
            astNode = newExpression;
        }
        astNode.setLineno(i);
        return memberExprTail(z, astNode);
    }

    private AstNode memberExprTail(boolean z, AstNode astNode) throws IOException {
        if (astNode == null) {
            codeBug();
        }
        int position = astNode.getPosition();
        while (true) {
            int peekToken = peekToken();
            int i = -1;
            if (peekToken == 83) {
                consumeToken();
                int i2 = this.f782ts.tokenBeg;
                int i3 = this.f782ts.lineno;
                AstNode expr = expr();
                int nodeEnd = getNodeEnd(expr);
                if (mustMatchToken(84, "msg.no.bracket.index")) {
                    i = this.f782ts.tokenBeg;
                    nodeEnd = this.f782ts.tokenEnd;
                }
                ElementGet elementGet = new ElementGet(position, nodeEnd - position);
                elementGet.setTarget(astNode);
                elementGet.setElement(expr);
                elementGet.setParens(i2, i);
                elementGet.setLineno(i3);
                astNode = elementGet;
            } else if (peekToken != 87) {
                if (peekToken == 108 || peekToken == 143) {
                    int i4 = this.f782ts.lineno;
                    astNode = propertyAccess(peekToken, astNode);
                    astNode.setLineno(i4);
                } else if (peekToken != 146) {
                    break;
                } else {
                    consumeToken();
                    int i5 = this.f782ts.tokenBeg;
                    int i6 = this.f782ts.lineno;
                    mustHaveXML();
                    setRequiresActivation();
                    AstNode expr2 = expr();
                    int nodeEnd2 = getNodeEnd(expr2);
                    int i7 = -1;
                    if (mustMatchToken(88, "msg.no.paren")) {
                        i7 = this.f782ts.tokenBeg;
                        nodeEnd2 = this.f782ts.tokenEnd;
                    }
                    XmlDotQuery xmlDotQuery = new XmlDotQuery(position, nodeEnd2 - position);
                    xmlDotQuery.setLeft(astNode);
                    xmlDotQuery.setRight(expr2);
                    xmlDotQuery.setOperatorPosition(i5);
                    xmlDotQuery.setRp(i7 - position);
                    xmlDotQuery.setLineno(i6);
                    astNode = xmlDotQuery;
                }
            } else if (!z) {
                break;
            } else {
                int i8 = this.f782ts.lineno;
                consumeToken();
                checkCallRequiresActivation(astNode);
                FunctionCall functionCall = new FunctionCall(position);
                functionCall.setTarget(astNode);
                functionCall.setLineno(i8);
                functionCall.setLp(this.f782ts.tokenBeg - position);
                List<AstNode> argumentList = argumentList();
                if (argumentList != null && argumentList.size() > 65536) {
                    reportError("msg.too.many.function.args");
                }
                functionCall.setArguments(argumentList);
                functionCall.setRp(this.f782ts.tokenBeg - position);
                functionCall.setLength(this.f782ts.tokenEnd - position);
                astNode = functionCall;
            }
        }
        return astNode;
    }

    private AstNode mulExpr() throws IOException {
        AstNode unaryExpr = unaryExpr();
        while (true) {
            int peekToken = peekToken();
            int i = this.f782ts.tokenBeg;
            switch (peekToken) {
                case 23:
                case 24:
                case 25:
                    consumeToken();
                    unaryExpr = new InfixExpression(peekToken, unaryExpr, unaryExpr(), i);
                default:
                    return unaryExpr;
            }
        }
    }

    private void mustHaveXML() {
        if (!this.compilerEnv.isXmlAvailable()) {
            reportError("msg.XML.not.available");
        }
    }

    private boolean mustMatchToken(int i, String str) throws IOException {
        return mustMatchToken(i, str, this.f782ts.tokenBeg, this.f782ts.tokenEnd - this.f782ts.tokenBeg);
    }

    private boolean mustMatchToken(int i, String str, int i2, int i3) throws IOException {
        if (matchToken(i)) {
            return true;
        }
        reportError(str, i2, i3);
        return false;
    }

    private AstNode name(int i, int i2) throws IOException {
        String string = this.f782ts.getString();
        int i3 = this.f782ts.tokenBeg;
        int i4 = this.f782ts.lineno;
        if ((i & 131072) == 0 || peekToken() != 103) {
            saveNameTokenData(i3, string, i4);
            return this.compilerEnv.isXmlAvailable() ? propertyName(-1, string, 0) : createNameNode(true, 39);
        }
        Label label = new Label(i3, this.f782ts.tokenEnd - i3);
        label.setName(string);
        label.setLineno(this.f782ts.lineno);
        return label;
    }

    private AstNode nameOrLabel() throws IOException {
        ExpressionStatement expressionStatement;
        if (this.currentToken != 39) {
            throw codeBug();
        }
        int i = this.f782ts.tokenBeg;
        this.currentFlaggedToken |= 131072;
        AstNode expr = expr();
        if (expr.getType() != 130) {
            ExpressionStatement expressionStatement2 = new ExpressionStatement(expr, !insideFunction());
            expressionStatement2.lineno = expr.lineno;
            return expressionStatement2;
        }
        LabeledStatement labeledStatement = new LabeledStatement(i);
        recordLabel((Label) expr, labeledStatement);
        labeledStatement.setLineno(this.f782ts.lineno);
        while (true) {
            if (peekToken() != 39) {
                expressionStatement = null;
                break;
            }
            this.currentFlaggedToken |= 131072;
            AstNode expr2 = expr();
            if (expr2.getType() != 130) {
                expressionStatement = new ExpressionStatement(expr2, !insideFunction());
                autoInsertSemicolon(expressionStatement);
                break;
            }
            recordLabel((Label) expr2, labeledStatement);
        }
        try {
            this.currentLabel = labeledStatement;
            AstNode astNode = expressionStatement;
            if (expressionStatement == null) {
                astNode = statementHelper();
            }
            this.currentLabel = null;
            for (Label label : labeledStatement.getLabels()) {
                this.labelSet.remove(label.getName());
            }
            labeledStatement.setLength(astNode.getParent() == null ? getNodeEnd(astNode) - i : getNodeEnd(astNode));
            labeledStatement.setStatement(astNode);
            return labeledStatement;
        } catch (Throwable th) {
            this.currentLabel = null;
            for (Label label2 : labeledStatement.getLabels()) {
                this.labelSet.remove(label2.getName());
            }
            throw th;
        }
    }

    private int nextFlaggedToken() throws IOException {
        peekToken();
        int i = this.currentFlaggedToken;
        consumeToken();
        return i;
    }

    private int nextToken() throws IOException {
        int peekToken = peekToken();
        consumeToken();
        return peekToken;
    }

    private int nodeEnd(AstNode astNode) {
        return astNode.getPosition() + astNode.getLength();
    }

    private static final boolean nowAllSet(int i, int i2, int i3) {
        return (i & i3) != i3 && (i2 & i3) == i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0222 A[LOOP:0: B:7:0x0043->B:66:0x0222, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x022e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.mozilla.javascript.ast.ObjectLiteral objectLiteral() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 614
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.Parser.objectLiteral():org.mozilla.javascript.ast.ObjectLiteral");
    }

    private AstNode objliteralProperty() throws IOException {
        AstNode astNode;
        switch (peekToken()) {
            case 39:
                astNode = createNameNode();
                break;
            case 40:
                astNode = new NumberLiteral(this.f782ts.tokenBeg, this.f782ts.getString(), this.f782ts.getNumber());
                break;
            case 41:
                astNode = createStringLiteral();
                break;
            default:
                if (this.compilerEnv.isReservedKeywordAsIdentifier() && TokenStream.isKeyword(this.f782ts.getString())) {
                    astNode = createNameNode();
                    break;
                } else {
                    reportError("msg.bad.prop");
                    return null;
                }
                break;
        }
        consumeToken();
        return astNode;
    }

    private AstNode orExpr() throws IOException {
        AstNode andExpr = andExpr();
        AstNode astNode = andExpr;
        if (matchToken(104)) {
            astNode = new InfixExpression(104, andExpr, orExpr(), this.f782ts.tokenBeg);
        }
        return astNode;
    }

    private AstNode parenExpr() throws IOException {
        boolean z = this.inForInit;
        this.inForInit = false;
        try {
            Comment andResetJsDoc = getAndResetJsDoc();
            int i = this.f782ts.lineno;
            int i2 = this.f782ts.tokenBeg;
            AstNode expr = expr();
            if (peekToken() == 119) {
                return generatorExpression(expr, i2);
            }
            ParenthesizedExpression parenthesizedExpression = new ParenthesizedExpression(expr);
            Comment comment = andResetJsDoc;
            if (andResetJsDoc == null) {
                comment = getAndResetJsDoc();
            }
            if (comment != null) {
                parenthesizedExpression.setJsDocNode(comment);
            }
            mustMatchToken(88, "msg.no.paren");
            parenthesizedExpression.setLength(this.f782ts.tokenEnd - parenthesizedExpression.getPosition());
            parenthesizedExpression.setLineno(i);
            return parenthesizedExpression;
        } finally {
            this.inForInit = z;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x014c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.mozilla.javascript.ast.AstRoot parse() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 464
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.Parser.parse():org.mozilla.javascript.ast.AstRoot");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:2|(2:4|(1:6)(8:7|9|46|(1:11)(2:13|(3:14|15|(1:48)(4:17|(2:19|20)(2:32|33)|34|35)))|38|(2:40|(1:42))|43|44))|8|9|46|(0)(0)|38|(0)|43|44|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x008d, code lost:
        r9 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0129, code lost:
        r4.nestingOfFunction--;
        r4.inUseStrictDirective = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x013b, code lost:
        throw r9;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0057 A[Catch: all -> 0x008d, ParserException -> 0x0185, TRY_ENTER, TRY_LEAVE, TryCatch #2 {ParserException -> 0x0185, all -> 0x008d, blocks: (B:11:0x0057, B:14:0x0095, B:21:0x00c0, B:24:0x00d3, B:28:0x00f2, B:30:0x00fd, B:32:0x010d, B:34:0x011c), top: B:46:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0162  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.mozilla.javascript.ast.AstNode parseFunctionBody() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.Parser.parseFunctionBody():org.mozilla.javascript.ast.AstNode");
    }

    private void parseFunctionParams(FunctionNode functionNode) throws IOException {
        HashMap hashMap;
        if (matchToken(88)) {
            functionNode.setRp(this.f782ts.tokenBeg - functionNode.getPosition());
            return;
        }
        HashMap hashMap2 = null;
        HashSet hashSet = new HashSet();
        do {
            int peekToken = peekToken();
            if (peekToken == 83 || peekToken == 85) {
                AstNode destructuringPrimaryExpr = destructuringPrimaryExpr();
                markDestructuring(destructuringPrimaryExpr);
                functionNode.addParam(destructuringPrimaryExpr);
                hashMap = hashMap2;
                if (hashMap2 == null) {
                    hashMap = new HashMap();
                }
                String nextTempName = this.currentScriptOrFn.getNextTempName();
                defineSymbol(87, nextTempName, false);
                hashMap.put(nextTempName, destructuringPrimaryExpr);
            } else if (mustMatchToken(39, "msg.no.parm")) {
                functionNode.addParam(createNameNode());
                String string = this.f782ts.getString();
                defineSymbol(87, string);
                hashMap = hashMap2;
                if (this.inUseStrictDirective) {
                    if ("eval".equals(string) || "arguments".equals(string)) {
                        reportError("msg.bad.id.strict", string);
                    }
                    if (hashSet.contains(string)) {
                        addError("msg.dup.param.strict", string);
                    }
                    hashSet.add(string);
                    hashMap = hashMap2;
                }
            } else {
                functionNode.addParam(makeErrorNode());
                hashMap = hashMap2;
            }
            hashMap2 = hashMap;
        } while (matchToken(89));
        if (hashMap != null) {
            Node node = new Node(89);
            for (Map.Entry entry : hashMap.entrySet()) {
                node.addChildToBack(createDestructuringAssignment(122, (Node) entry.getValue(), createName((String) entry.getKey())));
            }
            functionNode.putProp(23, node);
        }
        if (mustMatchToken(88, "msg.no.paren.after.parms")) {
            functionNode.setRp(this.f782ts.tokenBeg - functionNode.getPosition());
        }
    }

    private int peekFlaggedToken() throws IOException {
        peekToken();
        return this.currentFlaggedToken;
    }

    private int peekToken() throws IOException {
        if (this.currentFlaggedToken != 0) {
            return this.currentToken;
        }
        int lineno = this.f782ts.getLineno();
        int token = this.f782ts.getToken();
        int i = 0;
        boolean z = false;
        while (true) {
            if (token != 1 && token != 161) {
                break;
            }
            if (token == 1) {
                lineno++;
                z = true;
            } else {
                z = z;
                lineno = lineno;
                if (this.compilerEnv.isRecordingComments()) {
                    String andResetCurrentComment = this.f782ts.getAndResetCurrentComment();
                    recordComment(lineno, andResetCurrentComment);
                    lineno += getNumberOfEols(andResetCurrentComment);
                    z = z;
                }
            }
            token = this.f782ts.getToken();
        }
        this.currentToken = token;
        if (z) {
            i = 65536;
        }
        this.currentFlaggedToken = token | i;
        return this.currentToken;
    }

    private int peekTokenOrEOL() throws IOException {
        int peekToken = peekToken();
        if ((this.currentFlaggedToken & 65536) != 0) {
            peekToken = 1;
        }
        return peekToken;
    }

    private ObjectProperty plainProperty(AstNode astNode, int i) throws IOException {
        int peekToken = peekToken();
        if ((peekToken == 89 || peekToken == 86) && i == 39 && this.compilerEnv.getLanguageVersion() >= 180) {
            if (!this.inDestructuringAssignment) {
                reportError("msg.bad.object.init");
            }
            Name name = new Name(astNode.getPosition(), astNode.getString());
            ObjectProperty objectProperty = new ObjectProperty();
            objectProperty.putProp(26, Boolean.TRUE);
            objectProperty.setLeftAndRight(astNode, name);
            return objectProperty;
        }
        mustMatchToken(103, "msg.no.colon.prop");
        ObjectProperty objectProperty2 = new ObjectProperty();
        objectProperty2.setOperatorPosition(this.f782ts.tokenBeg);
        objectProperty2.setLeftAndRight(astNode, assignExpr());
        return objectProperty2;
    }

    private AstNode primaryExpr() throws IOException {
        int nextFlaggedToken = nextFlaggedToken();
        int i = 65535 & nextFlaggedToken;
        switch (i) {
            case -1:
                break;
            case 0:
                reportError("msg.unexpected.eof");
                break;
            default:
                switch (i) {
                    case 39:
                        return name(nextFlaggedToken, i);
                    case 40:
                        String string = this.f782ts.getString();
                        if (this.inUseStrictDirective && this.f782ts.isNumberOctal()) {
                            reportError("msg.no.octal.strict");
                        }
                        String str = string;
                        if (this.f782ts.isNumberOctal()) {
                            str = "0" + string;
                        }
                        String str2 = str;
                        if (this.f782ts.isNumberHex()) {
                            str2 = "0x" + str;
                        }
                        return new NumberLiteral(this.f782ts.tokenBeg, str2, this.f782ts.getNumber());
                    case 41:
                        return createStringLiteral();
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                        int i2 = this.f782ts.tokenBeg;
                        return new KeywordLiteral(i2, this.f782ts.tokenEnd - i2, i);
                    default:
                        switch (i) {
                            case 24:
                            case 100:
                                this.f782ts.readRegExp(i);
                                int i3 = this.f782ts.tokenBeg;
                                RegExpLiteral regExpLiteral = new RegExpLiteral(i3, this.f782ts.tokenEnd - i3);
                                regExpLiteral.setValue(this.f782ts.getString());
                                regExpLiteral.setFlags(this.f782ts.readAndClearRegExpFlags());
                                return regExpLiteral;
                            case 83:
                                return arrayLiteral();
                            case 85:
                                return objectLiteral();
                            case 87:
                                return parenExpr();
                            case 109:
                                return function(2);
                            case 127:
                                reportError("msg.reserved.id");
                                break;
                            case 147:
                                mustHaveXML();
                                return attributeAccess();
                            case 153:
                                return let(false, this.f782ts.tokenBeg);
                            default:
                                reportError("msg.syntax");
                                break;
                        }
                }
        }
        return makeErrorNode();
    }

    private AstNode propertyAccess(int i, AstNode astNode) throws IOException {
        AstNode astNode2;
        String keywordToName;
        if (astNode == null) {
            codeBug();
        }
        int i2 = 0;
        int i3 = this.f782ts.lineno;
        int i4 = this.f782ts.tokenBeg;
        consumeToken();
        if (i == 143) {
            mustHaveXML();
            i2 = 4;
        }
        if (!this.compilerEnv.isXmlAvailable()) {
            if (nextToken() != 39 && (!this.compilerEnv.isReservedKeywordAsIdentifier() || !TokenStream.isKeyword(this.f782ts.getString()))) {
                reportError("msg.no.name.after.dot");
            }
            PropertyGet propertyGet = new PropertyGet(astNode, createNameNode(true, 33), i4);
            propertyGet.setLineno(i3);
            return propertyGet;
        }
        int nextToken = nextToken();
        if (nextToken == 23) {
            saveNameTokenData(this.f782ts.tokenBeg, "*", this.f782ts.lineno);
            astNode2 = propertyName(-1, "*", i2);
        } else if (nextToken == 39) {
            astNode2 = propertyName(-1, this.f782ts.getString(), i2);
        } else if (nextToken == 50) {
            saveNameTokenData(this.f782ts.tokenBeg, "throw", this.f782ts.lineno);
            astNode2 = propertyName(-1, "throw", i2);
        } else if (nextToken == 147) {
            astNode2 = attributeAccess();
        } else if (!this.compilerEnv.isReservedKeywordAsIdentifier() || (keywordToName = Token.keywordToName(nextToken)) == null) {
            reportError("msg.no.name.after.dot");
            return makeErrorNode();
        } else {
            saveNameTokenData(this.f782ts.tokenBeg, keywordToName, this.f782ts.lineno);
            astNode2 = propertyName(-1, keywordToName, i2);
        }
        boolean z = astNode2 instanceof XmlRef;
        InfixExpression xmlMemberGet = z ? new XmlMemberGet() : new PropertyGet();
        if (z && i == 108) {
            xmlMemberGet.setType(108);
        }
        int position = astNode.getPosition();
        xmlMemberGet.setPosition(position);
        xmlMemberGet.setLength(getNodeEnd(astNode2) - position);
        xmlMemberGet.setOperatorPosition(i4 - position);
        xmlMemberGet.setLineno(astNode.getLineno());
        xmlMemberGet.setLeft(astNode);
        xmlMemberGet.setRight(astNode2);
        return xmlMemberGet;
    }

    private AstNode propertyName(int i, String str, int i2) throws IOException {
        int i3;
        Name name;
        int i4 = i != -1 ? i : this.f782ts.tokenBeg;
        int i5 = this.f782ts.lineno;
        Name createNameNode = createNameNode(true, this.currentToken);
        if (matchToken(144)) {
            i3 = this.f782ts.tokenBeg;
            int nextToken = nextToken();
            if (nextToken == 23) {
                saveNameTokenData(this.f782ts.tokenBeg, "*", this.f782ts.lineno);
                name = createNameNode(false, -1);
            } else if (nextToken == 39) {
                name = createNameNode();
            } else if (nextToken == 83) {
                return xmlElemRef(i, createNameNode, i3);
            } else {
                reportError("msg.no.name.after.coloncolon");
                return makeErrorNode();
            }
        } else {
            name = createNameNode;
            createNameNode = null;
            i3 = -1;
        }
        if (createNameNode == null && i2 == 0 && i == -1) {
            return name;
        }
        XmlPropRef xmlPropRef = new XmlPropRef(i4, getNodeEnd(name) - i4);
        xmlPropRef.setAtPos(i);
        xmlPropRef.setNamespace(createNameNode);
        xmlPropRef.setColonPos(i3);
        xmlPropRef.setPropName(name);
        xmlPropRef.setLineno(i5);
        return xmlPropRef;
    }

    private String readFully(Reader reader) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(reader);
        try {
            char[] cArr = new char[1024];
            StringBuilder sb = new StringBuilder(1024);
            while (true) {
                int read = bufferedReader.read(cArr, 0, 1024);
                if (read == -1) {
                    return sb.toString();
                }
                sb.append(cArr, 0, read);
            }
        } finally {
            bufferedReader.close();
        }
    }

    private void recordComment(int i, String str) {
        if (this.scannedComments == null) {
            this.scannedComments = new ArrayList();
        }
        Comment comment = new Comment(this.f782ts.tokenBeg, this.f782ts.getTokenLength(), this.f782ts.commentType, str);
        if (this.f782ts.commentType == Token.CommentType.JSDOC && this.compilerEnv.isRecordingLocalJsDocComments()) {
            this.currentJsDocComment = comment;
        }
        comment.setLineno(i);
        this.scannedComments.add(comment);
    }

    private void recordLabel(Label label, LabeledStatement labeledStatement) throws IOException {
        if (peekToken() != 103) {
            codeBug();
        }
        consumeToken();
        String name = label.getName();
        if (this.labelSet == null) {
            this.labelSet = new HashMap();
        } else {
            LabeledStatement labeledStatement2 = this.labelSet.get(name);
            if (labeledStatement2 != null) {
                if (this.compilerEnv.isIdeMode()) {
                    Label labelByName = labeledStatement2.getLabelByName(name);
                    reportError("msg.dup.label", labelByName.getAbsolutePosition(), labelByName.getLength());
                }
                reportError("msg.dup.label", label.getPosition(), label.getLength());
            }
        }
        labeledStatement.addLabel(label);
        this.labelSet.put(name, labeledStatement);
    }

    private AstNode relExpr() throws IOException {
        AstNode shiftExpr = shiftExpr();
        while (true) {
            int peekToken = peekToken();
            int i = this.f782ts.tokenBeg;
            switch (peekToken) {
                case 14:
                case 15:
                case 16:
                case 17:
                    break;
                default:
                    switch (peekToken) {
                        case 52:
                            if (this.inForInit) {
                                break;
                            } else {
                                continue;
                            }
                    }
            }
            consumeToken();
            shiftExpr = new InfixExpression(peekToken, shiftExpr, shiftExpr(), i);
        }
        return shiftExpr;
    }

    private AstNode returnOrYield(int i, boolean z) throws IOException {
        AstNode astNode;
        int i2 = 4;
        if (!insideFunction()) {
            reportError(i == 4 ? "msg.bad.return" : "msg.bad.yield");
        }
        consumeToken();
        int i3 = this.f782ts.lineno;
        int i4 = this.f782ts.tokenBeg;
        int i5 = this.f782ts.tokenEnd;
        int peekTokenOrEOL = peekTokenOrEOL();
        int i6 = i5;
        AstNode astNode2 = null;
        if (peekTokenOrEOL != 72) {
            i6 = i5;
            astNode2 = null;
            if (peekTokenOrEOL != 82) {
                i6 = i5;
                astNode2 = null;
                if (peekTokenOrEOL != 84) {
                    i6 = i5;
                    astNode2 = null;
                    if (peekTokenOrEOL != 86) {
                        i6 = i5;
                        astNode2 = null;
                        if (peekTokenOrEOL != 88) {
                            i6 = i5;
                            astNode2 = null;
                            switch (peekTokenOrEOL) {
                                case -1:
                                case 0:
                                case 1:
                                    break;
                                default:
                                    astNode2 = expr();
                                    i6 = getNodeEnd(astNode2);
                                    break;
                            }
                        }
                    }
                }
            }
        }
        int i7 = this.endFlags;
        if (i == 4) {
            int i8 = this.endFlags;
            if (astNode2 == null) {
                i2 = 2;
            }
            this.endFlags = i8 | i2;
            int i9 = i6 - i4;
            ReturnStatement returnStatement = new ReturnStatement(i4, i9, astNode2);
            astNode = returnStatement;
            if (nowAllSet(i7, this.endFlags, 6)) {
                addStrictWarning("msg.return.inconsistent", "", i4, i9);
                astNode = returnStatement;
            }
        } else {
            if (!insideFunction()) {
                reportError("msg.bad.yield");
            }
            this.endFlags |= 8;
            Yield yield = new Yield(i4, i6 - i4, astNode2);
            setRequiresActivation();
            setIsGenerator();
            astNode = yield;
            if (!z) {
                astNode = new ExpressionStatement(yield);
            }
        }
        if (insideFunction() && nowAllSet(i7, this.endFlags, 12)) {
            Name functionName = ((FunctionNode) this.currentScriptOrFn).getFunctionName();
            if (functionName == null || functionName.length() == 0) {
                addError("msg.anon.generator.returns", "");
            } else {
                addError("msg.generator.returns", functionName.getIdentifier());
            }
        }
        astNode.setLineno(i3);
        return astNode;
    }

    private void saveNameTokenData(int i, String str, int i2) {
        this.prevNameTokenStart = i;
        this.prevNameTokenString = str;
        this.prevNameTokenLineno = i2;
    }

    private AstNode shiftExpr() throws IOException {
        AstNode addExpr = addExpr();
        while (true) {
            int peekToken = peekToken();
            int i = this.f782ts.tokenBeg;
            switch (peekToken) {
                case 18:
                case 19:
                case 20:
                    consumeToken();
                    addExpr = new InfixExpression(peekToken, addExpr, addExpr(), i);
                default:
                    return addExpr;
            }
        }
    }

    private AstNode statement() throws IOException {
        int i = this.f782ts.tokenBeg;
        try {
            AstNode statementHelper = statementHelper();
            if (statementHelper != null) {
                if (this.compilerEnv.isStrictMode() && !statementHelper.hasSideEffects()) {
                    int position = statementHelper.getPosition();
                    int max = Math.max(position, lineBeginningFor(position));
                    addStrictWarning(statementHelper instanceof EmptyStatement ? "msg.extra.trailing.semi" : "msg.no.side.effects", "", max, nodeEnd(statementHelper) - max);
                }
                return statementHelper;
            }
        } catch (ParserException e) {
        }
        while (true) {
            int peekTokenOrEOL = peekTokenOrEOL();
            consumeToken();
            if (peekTokenOrEOL != 82) {
                switch (peekTokenOrEOL) {
                }
            }
        }
        return new EmptyStatement(i, this.f782ts.tokenBeg - i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.mozilla.javascript.ast.AstNode statementHelper() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 549
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.Parser.statementHelper():org.mozilla.javascript.ast.AstNode");
    }

    private AstNode statements() throws IOException {
        return statements(null);
    }

    private AstNode statements(AstNode astNode) throws IOException {
        if (this.currentToken != 85 && !this.compilerEnv.isIdeMode()) {
            codeBug();
        }
        int i = this.f782ts.tokenBeg;
        if (astNode == null) {
            astNode = new Block(i);
        }
        astNode.setLineno(this.f782ts.lineno);
        while (true) {
            int peekToken = peekToken();
            if (peekToken <= 0 || peekToken == 86) {
                break;
            }
            astNode.addChild(statement());
        }
        astNode.setLength(this.f782ts.tokenBeg - i);
        return astNode;
    }

    private SwitchStatement switchStatement() throws IOException {
        AstNode astNode;
        if (this.currentToken != 114) {
            codeBug();
        }
        consumeToken();
        int i = this.f782ts.tokenBeg;
        SwitchStatement switchStatement = new SwitchStatement(i);
        if (mustMatchToken(87, "msg.no.paren.switch")) {
            switchStatement.setLp(this.f782ts.tokenBeg - i);
        }
        switchStatement.setLineno(this.f782ts.lineno);
        switchStatement.setExpression(expr());
        enterSwitch(switchStatement);
        try {
            if (mustMatchToken(88, "msg.no.paren.after.switch")) {
                switchStatement.setRp(this.f782ts.tokenBeg - i);
            }
            mustMatchToken(85, "msg.no.brace.switch");
            boolean z = false;
            while (true) {
                int nextToken = nextToken();
                int i2 = this.f782ts.tokenBeg;
                int i3 = this.f782ts.lineno;
                if (nextToken != 86) {
                    switch (nextToken) {
                        case 115:
                            astNode = expr();
                            mustMatchToken(103, "msg.no.colon.case");
                            break;
                        case 116:
                            if (z) {
                                reportError("msg.double.switch.default");
                            }
                            z = true;
                            astNode = null;
                            mustMatchToken(103, "msg.no.colon.case");
                            break;
                        default:
                            reportError("msg.bad.switch");
                            break;
                    }
                    SwitchCase switchCase = new SwitchCase(i2);
                    switchCase.setExpression(astNode);
                    switchCase.setLength(this.f782ts.tokenEnd - i);
                    switchCase.setLineno(i3);
                    while (true) {
                        int peekToken = peekToken();
                        if (peekToken != 86 && peekToken != 115 && peekToken != 116 && peekToken != 0) {
                            switchCase.addStatement(statement());
                        }
                    }
                    switchStatement.addCase(switchCase);
                } else {
                    switchStatement.setLength(this.f782ts.tokenEnd - i);
                }
            }
            return switchStatement;
        } finally {
            exitSwitch();
        }
    }

    private ThrowStatement throwStatement() throws IOException {
        if (this.currentToken != 50) {
            codeBug();
        }
        consumeToken();
        int i = this.f782ts.tokenBeg;
        int i2 = this.f782ts.lineno;
        if (peekTokenOrEOL() == 1) {
            reportError("msg.bad.throw.eol");
        }
        AstNode expr = expr();
        ThrowStatement throwStatement = new ThrowStatement(i, getNodeEnd(expr), expr);
        throwStatement.setLineno(i2);
        return throwStatement;
    }

    private TryStatement tryStatement() throws IOException {
        ArrayList arrayList;
        AstNode astNode;
        int i;
        AstNode astNode2;
        int i2;
        if (this.currentToken != 81) {
            codeBug();
        }
        consumeToken();
        Comment andResetJsDoc = getAndResetJsDoc();
        int i3 = this.f782ts.tokenBeg;
        int i4 = this.f782ts.lineno;
        if (peekToken() != 85) {
            reportError("msg.no.brace.try");
        }
        AstNode statement = statement();
        int nodeEnd = getNodeEnd(statement);
        boolean z = false;
        int peekToken = peekToken();
        if (peekToken == 124) {
            arrayList = null;
            while (matchToken(124)) {
                int i5 = this.f782ts.lineno;
                if (z) {
                    reportError("msg.catch.unreachable");
                }
                int i6 = this.f782ts.tokenBeg;
                int i7 = mustMatchToken(87, "msg.no.paren.catch") ? this.f782ts.tokenBeg : -1;
                mustMatchToken(39, "msg.bad.catchcond");
                Name createNameNode = createNameNode();
                String identifier = createNameNode.getIdentifier();
                if (this.inUseStrictDirective && ("eval".equals(identifier) || "arguments".equals(identifier))) {
                    reportError("msg.bad.id.strict", identifier);
                }
                if (matchToken(112)) {
                    i2 = this.f782ts.tokenBeg;
                    astNode2 = expr();
                } else {
                    z = true;
                    i2 = -1;
                    astNode2 = null;
                }
                int i8 = mustMatchToken(88, "msg.bad.catchcond") ? this.f782ts.tokenBeg : -1;
                mustMatchToken(85, "msg.no.brace.catchblock");
                Block block = (Block) statements();
                nodeEnd = getNodeEnd(block);
                CatchClause catchClause = new CatchClause(i6);
                catchClause.setVarName(createNameNode);
                catchClause.setCatchCondition(astNode2);
                catchClause.setBody(block);
                if (i2 != -1) {
                    catchClause.setIfPosition(i2 - i6);
                }
                catchClause.setParens(i7, i8);
                catchClause.setLineno(i5);
                if (mustMatchToken(86, "msg.no.brace.after.body")) {
                    nodeEnd = this.f782ts.tokenEnd;
                }
                catchClause.setLength(nodeEnd - i6);
                ArrayList arrayList2 = arrayList;
                if (arrayList == null) {
                    arrayList2 = new ArrayList();
                }
                arrayList2.add(catchClause);
                arrayList = arrayList2;
            }
        } else {
            if (peekToken != 125) {
                mustMatchToken(125, "msg.try.no.catchfinally");
            }
            arrayList = null;
        }
        if (matchToken(125)) {
            i = this.f782ts.tokenBeg;
            astNode = statement();
            nodeEnd = getNodeEnd(astNode);
        } else {
            astNode = null;
            i = -1;
        }
        TryStatement tryStatement = new TryStatement(i3, nodeEnd - i3);
        tryStatement.setTryBlock(statement);
        tryStatement.setCatchClauses(arrayList);
        tryStatement.setFinallyBlock(astNode);
        if (i != -1) {
            tryStatement.setFinallyPosition(i - i3);
        }
        tryStatement.setLineno(i4);
        if (andResetJsDoc != null) {
            tryStatement.setJsDocNode(andResetJsDoc);
        }
        return tryStatement;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private AstNode unaryExpr() throws IOException {
        int peekToken = peekToken();
        int i = this.f782ts.lineno;
        switch (peekToken) {
            case -1:
                consumeToken();
                return makeErrorNode();
            case 14:
                if (this.compilerEnv.isXmlAvailable()) {
                    consumeToken();
                    return memberExprTail(true, xmlInitializer());
                }
                break;
            case 21:
                consumeToken();
                UnaryExpression unaryExpression = new UnaryExpression(28, this.f782ts.tokenBeg, unaryExpr());
                unaryExpression.setLineno(i);
                return unaryExpression;
            case 22:
                consumeToken();
                UnaryExpression unaryExpression2 = new UnaryExpression(29, this.f782ts.tokenBeg, unaryExpr());
                unaryExpression2.setLineno(i);
                return unaryExpression2;
            case 26:
            case 27:
            case 32:
            case 126:
                consumeToken();
                UnaryExpression unaryExpression3 = new UnaryExpression(peekToken, this.f782ts.tokenBeg, unaryExpr());
                unaryExpression3.setLineno(i);
                return unaryExpression3;
            case 31:
                consumeToken();
                UnaryExpression unaryExpression4 = new UnaryExpression(peekToken, this.f782ts.tokenBeg, unaryExpr());
                unaryExpression4.setLineno(i);
                return unaryExpression4;
            case 106:
            case 107:
                consumeToken();
                UnaryExpression unaryExpression5 = new UnaryExpression(peekToken, this.f782ts.tokenBeg, memberExpr(true));
                unaryExpression5.setLineno(i);
                checkBadIncDec(unaryExpression5);
                return unaryExpression5;
        }
        AstNode memberExpr = memberExpr(true);
        int peekTokenOrEOL = peekTokenOrEOL();
        if (peekTokenOrEOL != 106 && peekTokenOrEOL != 107) {
            return memberExpr;
        }
        consumeToken();
        UnaryExpression unaryExpression6 = new UnaryExpression(peekTokenOrEOL, this.f782ts.tokenBeg, memberExpr, true);
        unaryExpression6.setLineno(i);
        checkBadIncDec(unaryExpression6);
        return unaryExpression6;
    }

    private VariableDeclaration variables(int i, int i2, boolean z) throws IOException {
        int i3;
        AstNode astNode;
        Name name;
        VariableDeclaration variableDeclaration = new VariableDeclaration(i2);
        variableDeclaration.setType(i);
        variableDeclaration.setLineno(this.f782ts.lineno);
        Comment andResetJsDoc = getAndResetJsDoc();
        if (andResetJsDoc != null) {
            variableDeclaration.setJsDocNode(andResetJsDoc);
        }
        do {
            int peekToken = peekToken();
            int i4 = this.f782ts.tokenBeg;
            i3 = this.f782ts.tokenEnd;
            AstNode astNode2 = null;
            if (peekToken == 83 || peekToken == 85) {
                astNode = destructuringPrimaryExpr();
                i3 = getNodeEnd(astNode);
                if (!(astNode instanceof DestructuringForm)) {
                    reportError("msg.bad.assign.left", i4, i3 - i4);
                }
                markDestructuring(astNode);
                name = null;
            } else {
                mustMatchToken(39, "msg.bad.var");
                name = createNameNode();
                name.setLineno(this.f782ts.getLineno());
                if (this.inUseStrictDirective) {
                    String string = this.f782ts.getString();
                    if ("eval".equals(string) || "arguments".equals(this.f782ts.getString())) {
                        reportError("msg.bad.id.strict", string);
                    }
                }
                defineSymbol(i, this.f782ts.getString(), this.inForInit);
                astNode = null;
            }
            int i5 = this.f782ts.lineno;
            Comment andResetJsDoc2 = getAndResetJsDoc();
            if (matchToken(90)) {
                astNode2 = assignExpr();
                i3 = getNodeEnd(astNode2);
            }
            VariableInitializer variableInitializer = new VariableInitializer(i4, i3 - i4);
            if (astNode != null) {
                if (astNode2 == null && !this.inForInit) {
                    reportError("msg.destruct.assign.no.init");
                }
                variableInitializer.setTarget(astNode);
            } else {
                variableInitializer.setTarget(name);
            }
            variableInitializer.setInitializer(astNode2);
            variableInitializer.setType(i);
            variableInitializer.setJsDocNode(andResetJsDoc2);
            variableInitializer.setLineno(i5);
            variableDeclaration.addVariable(variableInitializer);
        } while (matchToken(89));
        variableDeclaration.setLength(i3 - i2);
        variableDeclaration.setIsStatement(z);
        return variableDeclaration;
    }

    private void warnMissingSemi(int i, int i2) {
        if (this.compilerEnv.isStrictMode()) {
            int[] iArr = new int[2];
            String line = this.f782ts.getLine(i2, iArr);
            int i3 = i;
            if (this.compilerEnv.isIdeMode()) {
                i3 = Math.max(i, i2 - iArr[1]);
            }
            if (line != null) {
                addStrictWarning("msg.missing.semi", "", i3, i2 - i3, iArr[0], line, iArr[1]);
            } else {
                addStrictWarning("msg.missing.semi", "", i3, i2 - i3);
            }
        }
    }

    private void warnTrailingComma(int i, List<?> list, int i2) {
        if (this.compilerEnv.getWarnTrailingComma()) {
            if (!list.isEmpty()) {
                i = ((AstNode) list.get(0)).getPosition();
            }
            int max = Math.max(i, lineBeginningFor(i2));
            addWarning("msg.extra.trailing.comma", max, i2 - max);
        }
    }

    private WhileLoop whileLoop() throws IOException {
        if (this.currentToken != 117) {
            codeBug();
        }
        consumeToken();
        int i = this.f782ts.tokenBeg;
        WhileLoop whileLoop = new WhileLoop(i);
        whileLoop.setLineno(this.f782ts.lineno);
        enterLoop(whileLoop);
        try {
            ConditionData condition = condition();
            whileLoop.setCondition(condition.condition);
            whileLoop.setParens(condition.f783lp - i, condition.f784rp - i);
            AstNode statement = statement();
            whileLoop.setLength(getNodeEnd(statement) - i);
            whileLoop.setBody(statement);
            return whileLoop;
        } finally {
            exitLoop();
        }
    }

    private WithStatement withStatement() throws IOException {
        if (this.currentToken != 123) {
            codeBug();
        }
        consumeToken();
        Comment andResetJsDoc = getAndResetJsDoc();
        int i = this.f782ts.lineno;
        int i2 = this.f782ts.tokenBeg;
        int i3 = -1;
        int i4 = mustMatchToken(87, "msg.no.paren.with") ? this.f782ts.tokenBeg : -1;
        AstNode expr = expr();
        if (mustMatchToken(88, "msg.no.paren.after.with")) {
            i3 = this.f782ts.tokenBeg;
        }
        AstNode statement = statement();
        WithStatement withStatement = new WithStatement(i2, getNodeEnd(statement) - i2);
        withStatement.setJsDocNode(andResetJsDoc);
        withStatement.setExpression(expr);
        withStatement.setStatement(statement);
        withStatement.setParens(i4, i3);
        withStatement.setLineno(i);
        return withStatement;
    }

    private XmlElemRef xmlElemRef(int i, Name name, int i2) throws IOException {
        int i3 = this.f782ts.tokenBeg;
        int i4 = -1;
        int i5 = i != -1 ? i : i3;
        AstNode expr = expr();
        int nodeEnd = getNodeEnd(expr);
        if (mustMatchToken(84, "msg.no.bracket.index")) {
            i4 = this.f782ts.tokenBeg;
            nodeEnd = this.f782ts.tokenEnd;
        }
        XmlElemRef xmlElemRef = new XmlElemRef(i5, nodeEnd - i5);
        xmlElemRef.setNamespace(name);
        xmlElemRef.setColonPos(i2);
        xmlElemRef.setAtPos(i);
        xmlElemRef.setExpression(expr);
        xmlElemRef.setBrackets(i3, i4);
        return xmlElemRef;
    }

    private AstNode xmlInitializer() throws IOException {
        if (this.currentToken != 14) {
            codeBug();
        }
        int i = this.f782ts.tokenBeg;
        int firstXMLToken = this.f782ts.getFirstXMLToken();
        if (firstXMLToken == 145 || firstXMLToken == 148) {
            XmlLiteral xmlLiteral = new XmlLiteral(i);
            xmlLiteral.setLineno(this.f782ts.lineno);
            while (firstXMLToken == 145) {
                xmlLiteral.addFragment(new XmlString(this.f782ts.tokenBeg, this.f782ts.getString()));
                mustMatchToken(85, "msg.syntax");
                int i2 = this.f782ts.tokenBeg;
                AstNode emptyExpression = peekToken() == 86 ? new EmptyExpression(i2, this.f782ts.tokenEnd - i2) : expr();
                mustMatchToken(86, "msg.syntax");
                XmlExpression xmlExpression = new XmlExpression(i2, emptyExpression);
                xmlExpression.setIsXmlAttribute(this.f782ts.isXMLAttribute());
                xmlExpression.setLength(this.f782ts.tokenEnd - i2);
                xmlLiteral.addFragment(xmlExpression);
                firstXMLToken = this.f782ts.getNextXMLToken();
            }
            if (firstXMLToken != 148) {
                reportError("msg.syntax");
                return makeErrorNode();
            }
            xmlLiteral.addFragment(new XmlString(this.f782ts.tokenBeg, this.f782ts.getString()));
            return xmlLiteral;
        }
        reportError("msg.syntax");
        return makeErrorNode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addError(String str) {
        addError(str, this.f782ts.tokenBeg, this.f782ts.tokenEnd - this.f782ts.tokenBeg);
    }

    void addError(String str, int i, int i2) {
        addError(str, null, i, i2);
    }

    void addError(String str, String str2) {
        addError(str, str2, this.f782ts.tokenBeg, this.f782ts.tokenEnd - this.f782ts.tokenBeg);
    }

    void addError(String str, String str2, int i, int i2) {
        int i3;
        int i4;
        String str3;
        this.syntaxErrorCount++;
        String lookupMessage = lookupMessage(str, str2);
        if (this.errorCollector != null) {
            this.errorCollector.error(lookupMessage, this.sourceURI, i, i2);
            return;
        }
        if (this.f782ts != null) {
            i3 = this.f782ts.getLineno();
            str3 = this.f782ts.getLine();
            i4 = this.f782ts.getOffset();
        } else {
            str3 = "";
            i3 = 1;
            i4 = 1;
        }
        this.errorReporter.error(lookupMessage, this.sourceURI, i3, str3, i4);
    }

    void addStrictWarning(String str, String str2) {
        int i;
        int i2 = -1;
        if (this.f782ts != null) {
            i2 = this.f782ts.tokenBeg;
            i = this.f782ts.tokenEnd - this.f782ts.tokenBeg;
        } else {
            i = -1;
        }
        addStrictWarning(str, str2, i2, i);
    }

    void addStrictWarning(String str, String str2, int i, int i2) {
        if (this.compilerEnv.isStrictMode()) {
            addWarning(str, str2, i, i2);
        }
    }

    void addWarning(String str, int i, int i2) {
        addWarning(str, null, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addWarning(String str, String str2) {
        int i;
        int i2 = -1;
        if (this.f782ts != null) {
            i2 = this.f782ts.tokenBeg;
            i = this.f782ts.tokenEnd - this.f782ts.tokenBeg;
        } else {
            i = -1;
        }
        addWarning(str, str2, i2, i);
    }

    void addWarning(String str, String str2, int i, int i2) {
        String lookupMessage = lookupMessage(str, str2);
        if (this.compilerEnv.reportWarningAsError()) {
            addError(str, str2, i, i2);
        } else if (this.errorCollector != null) {
            this.errorCollector.warning(lookupMessage, this.sourceURI, i, i2);
        } else {
            this.errorReporter.warning(lookupMessage, this.sourceURI, this.f782ts.getLineno(), this.f782ts.getLine(), this.f782ts.getOffset());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkActivationName(String str, int i) {
        if (insideFunction()) {
            boolean z = true;
            if (!"arguments".equals(str)) {
                z = (this.compilerEnv.getActivationNames() == null || !this.compilerEnv.getActivationNames().contains(str)) ? "length".equals(str) && i == 33 && this.compilerEnv.getLanguageVersion() == 120 : true;
            }
            if (z) {
                setRequiresActivation();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkMutableReference(Node node) {
        if ((node.getIntProp(16, 0) & 4) != 0) {
            reportError("msg.bad.assign.left");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Node createDestructuringAssignment(int i, Node node, Node node2) {
        String nextTempName = this.currentScriptOrFn.getNextTempName();
        Node destructuringAssignmentHelper = destructuringAssignmentHelper(i, node, node2, nextTempName);
        destructuringAssignmentHelper.getLastChild().addChildToBack(createName(nextTempName));
        return destructuringAssignmentHelper;
    }

    protected Node createName(int i, String str, Node node) {
        Node createName = createName(str);
        createName.setType(i);
        if (node != null) {
            createName.addChildToBack(node);
        }
        return createName;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Node createName(String str) {
        checkActivationName(str, 39);
        return Node.newString(39, str);
    }

    protected Node createNumber(double d) {
        return Node.newNumber(d);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Scope createScopeNode(int i, int i2) {
        Scope scope = new Scope();
        scope.setType(i);
        scope.setLineno(i2);
        return scope;
    }

    void defineSymbol(int i, String str) {
        defineSymbol(i, str, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void defineSymbol(int i, String str, boolean z) {
        if (str == null) {
            if (!this.compilerEnv.isIdeMode()) {
                codeBug();
            } else {
                return;
            }
        }
        Scope definingScope = this.currentScope.getDefiningScope(str);
        Symbol symbol = definingScope != null ? definingScope.getSymbol(str) : null;
        int declType = symbol != null ? symbol.getDeclType() : -1;
        if (symbol != null && (declType == 154 || i == 154 || (definingScope == this.currentScope && declType == 153))) {
            addError(declType == 154 ? "msg.const.redecl" : declType == 153 ? "msg.let.redecl" : declType == 122 ? "msg.var.redecl" : declType == 109 ? "msg.fn.redecl" : "msg.parm.redecl", str);
        } else if (i != 87) {
            if (!(i == 109 || i == 122)) {
                switch (i) {
                    case 153:
                        if (z || (this.currentScope.getType() != 112 && !(this.currentScope instanceof Loop))) {
                            this.currentScope.putSymbol(new Symbol(i, str));
                            return;
                        } else {
                            addError("msg.let.decl.not.in.block");
                            return;
                        }
                    case 154:
                        break;
                    default:
                        throw codeBug();
                }
            }
            if (symbol == null) {
                this.currentScriptOrFn.putSymbol(new Symbol(i, str));
            } else if (declType == 122) {
                addStrictWarning("msg.var.redecl", str);
            } else if (declType == 87) {
                addStrictWarning("msg.var.hides.arg", str);
            }
        } else {
            if (symbol != null) {
                addWarning("msg.dup.parms", str);
            }
            this.currentScriptOrFn.putSymbol(new Symbol(i, str));
        }
    }

    boolean destructuringArray(ArrayLiteral arrayLiteral, int i, String str, Node node, List<String> list) {
        int i2 = i == 154 ? 155 : 8;
        boolean z = true;
        int i3 = 0;
        for (AstNode astNode : arrayLiteral.getElements()) {
            if (astNode.getType() == 128) {
                i3++;
            } else {
                Node node2 = new Node(36, createName(str), createNumber(i3));
                if (astNode.getType() == 39) {
                    String string = astNode.getString();
                    node.addChildToBack(new Node(i2, createName(49, string, null), node2));
                    if (i != -1) {
                        defineSymbol(i, string, true);
                        list.add(string);
                    }
                } else {
                    node.addChildToBack(destructuringAssignmentHelper(i, astNode, node2, this.currentScriptOrFn.getNextTempName()));
                }
                i3++;
                z = false;
            }
        }
        return z;
    }

    /* JADX WARN: Finally extract failed */
    Node destructuringAssignmentHelper(int i, Node node, Node node2, String str) {
        Scope createScopeNode = createScopeNode(158, node.getLineno());
        createScopeNode.addChildToFront(new Node(153, createName(39, str, node2)));
        try {
            pushScope(createScopeNode);
            boolean z = true;
            defineSymbol(153, str, true);
            popScope();
            Node node3 = new Node(89);
            createScopeNode.addChildToBack(node3);
            List<String> arrayList = new ArrayList<>();
            int type = node.getType();
            if (type != 33 && type != 36) {
                switch (type) {
                    case 65:
                        z = destructuringArray((ArrayLiteral) node, i, str, node3, arrayList);
                        break;
                    case 66:
                        z = destructuringObject((ObjectLiteral) node, i, str, node3, arrayList);
                        break;
                    default:
                        reportError("msg.bad.assign.left");
                        break;
                }
            } else {
                if (i != 122) {
                    switch (i) {
                    }
                    node3.addChildToBack(simpleAssignment(node, createName(str)));
                }
                reportError("msg.bad.assign.left");
                node3.addChildToBack(simpleAssignment(node, createName(str)));
            }
            if (z) {
                node3.addChildToBack(createNumber(0.0d));
            }
            createScopeNode.putProp(22, arrayList);
            return createScopeNode;
        } catch (Throwable th) {
            popScope();
            throw th;
        }
    }

    boolean destructuringObject(ObjectLiteral objectLiteral, int i, String str, Node node, List<String> list) {
        Node node2;
        int i2 = i == 154 ? 155 : 8;
        boolean z = true;
        for (ObjectProperty objectProperty : objectLiteral.getElements()) {
            int i3 = this.f782ts != null ? this.f782ts.lineno : 0;
            AstNode left = objectProperty.getLeft();
            if (left instanceof Name) {
                node2 = new Node(33, createName(str), Node.newString(((Name) left).getIdentifier()));
            } else if (left instanceof StringLiteral) {
                node2 = new Node(33, createName(str), Node.newString(((StringLiteral) left).getValue()));
            } else if (left instanceof NumberLiteral) {
                node2 = new Node(36, createName(str), createNumber((int) ((NumberLiteral) left).getNumber()));
            } else {
                throw codeBug();
            }
            node2.setLineno(i3);
            AstNode right = objectProperty.getRight();
            if (right.getType() == 39) {
                String identifier = ((Name) right).getIdentifier();
                node.addChildToBack(new Node(i2, createName(49, identifier, null), node2));
                if (i != -1) {
                    defineSymbol(i, identifier, true);
                    list.add(identifier);
                }
            } else {
                node.addChildToBack(destructuringAssignmentHelper(i, right, node2, this.currentScriptOrFn.getNextTempName()));
            }
            z = false;
        }
        return z;
    }

    public boolean eof() {
        return this.f782ts.eof();
    }

    boolean insideFunction() {
        return this.nestingOfFunction != 0;
    }

    String lookupMessage(String str) {
        return lookupMessage(str, null);
    }

    String lookupMessage(String str, String str2) {
        return str2 == null ? ScriptRuntime.getMessage0(str) : ScriptRuntime.getMessage1(str, str2);
    }

    void markDestructuring(AstNode astNode) {
        if (astNode instanceof DestructuringForm) {
            ((DestructuringForm) astNode).setIsDestructuring(true);
        } else if (astNode instanceof ParenthesizedExpression) {
            markDestructuring(((ParenthesizedExpression) astNode).getExpression());
        }
    }

    public AstRoot parse(Reader reader, String str, int i) throws IOException {
        if (this.parseFinished) {
            throw new IllegalStateException("parser reused");
        } else if (this.compilerEnv.isIdeMode()) {
            return parse(readFully(reader), str, i);
        } else {
            try {
                this.sourceURI = str;
                this.f782ts = new TokenStream(this, reader, null, i);
                return parse();
            } finally {
                this.parseFinished = true;
            }
        }
    }

    public AstRoot parse(String str, String str2, int i) {
        if (this.parseFinished) {
            throw new IllegalStateException("parser reused");
        }
        this.sourceURI = str2;
        if (this.compilerEnv.isIdeMode()) {
            this.sourceChars = str.toCharArray();
        }
        this.f782ts = new TokenStream(this, null, str, i);
        try {
            try {
                AstRoot parse = parse();
                this.parseFinished = true;
                return parse;
            } catch (IOException e) {
                throw new IllegalStateException();
            }
        } catch (Throwable th) {
            this.parseFinished = true;
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void popScope() {
        this.currentScope = this.currentScope.getParentScope();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void pushScope(Scope scope) {
        Scope parentScope = scope.getParentScope();
        if (parentScope == null) {
            this.currentScope.addChildScope(scope);
        } else if (parentScope != this.currentScope) {
            codeBug();
        }
        this.currentScope = scope;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AstNode removeParens(AstNode astNode) {
        while (astNode instanceof ParenthesizedExpression) {
            astNode = ((ParenthesizedExpression) astNode).getExpression();
        }
        return astNode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reportError(String str) {
        reportError(str, null);
    }

    void reportError(String str, int i, int i2) {
        reportError(str, null, i, i2);
    }

    void reportError(String str, String str2) {
        if (this.f782ts == null) {
            reportError(str, str2, 1, 1);
        } else {
            reportError(str, str2, this.f782ts.tokenBeg, this.f782ts.tokenEnd - this.f782ts.tokenBeg);
        }
    }

    void reportError(String str, String str2, int i, int i2) {
        addError(str, i, i2);
        if (!this.compilerEnv.recoverFromErrors()) {
            throw new ParserException();
        }
    }

    protected void setIsGenerator() {
        if (insideFunction()) {
            ((FunctionNode) this.currentScriptOrFn).setIsGenerator();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setRequiresActivation() {
        if (insideFunction()) {
            ((FunctionNode) this.currentScriptOrFn).setRequiresActivation();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Node simpleAssignment(Node node, Node node2) {
        Node node3;
        Node node4;
        int i;
        int type = node.getType();
        if (type == 33 || type == 36) {
            if (node instanceof PropertyGet) {
                PropertyGet propertyGet = (PropertyGet) node;
                node4 = propertyGet.getTarget();
                node3 = propertyGet.getProperty();
            } else if (node instanceof ElementGet) {
                ElementGet elementGet = (ElementGet) node;
                node4 = elementGet.getTarget();
                node3 = elementGet.getElement();
            } else {
                node4 = node.getFirstChild();
                node3 = node.getLastChild();
            }
            if (type == 33) {
                i = 35;
                node3.setType(41);
            } else {
                i = 37;
            }
            return new Node(i, node4, node3, node2);
        } else if (type == 39) {
            if (this.inUseStrictDirective) {
                Name name = (Name) node;
                if ("eval".equals(name.getIdentifier())) {
                    reportError("msg.bad.id.strict", name.getIdentifier());
                }
            }
            node.setType(49);
            return new Node(8, node, node2);
        } else if (type != 67) {
            throw codeBug();
        } else {
            Node firstChild = node.getFirstChild();
            checkMutableReference(firstChild);
            return new Node(68, firstChild, node2);
        }
    }
}
