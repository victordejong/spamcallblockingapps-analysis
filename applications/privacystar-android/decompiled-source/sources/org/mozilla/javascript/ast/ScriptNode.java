package org.mozilla.javascript.ast;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.mozilla.javascript.Node;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/ScriptNode.class */
public class ScriptNode extends Scope {
    private Object compilerData;
    private String encodedSource;
    private List<FunctionNode> functions;
    private boolean[] isConsts;
    private List<RegExpLiteral> regexps;
    private String sourceName;
    private String[] variableNames;
    private int encodedSourceStart = -1;
    private int encodedSourceEnd = -1;
    private int endLineno = -1;
    private List<FunctionNode> EMPTY_LIST = Collections.emptyList();
    private List<Symbol> symbols = new ArrayList(4);
    private int paramCount = 0;
    private int tempNumber = 0;

    public ScriptNode() {
        this.top = this;
        this.type = 136;
    }

    public ScriptNode(int i) {
        super(i);
        this.top = this;
        this.type = 136;
    }

    public int addFunction(FunctionNode functionNode) {
        if (functionNode == null) {
            codeBug();
        }
        if (this.functions == null) {
            this.functions = new ArrayList();
        }
        this.functions.add(functionNode);
        return this.functions.size() - 1;
    }

    public void addRegExp(RegExpLiteral regExpLiteral) {
        if (regExpLiteral == null) {
            codeBug();
        }
        if (this.regexps == null) {
            this.regexps = new ArrayList();
        }
        this.regexps.add(regExpLiteral);
        regExpLiteral.putIntProp(4, this.regexps.size() - 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addSymbol(Symbol symbol) {
        if (this.variableNames != null) {
            codeBug();
        }
        if (symbol.getDeclType() == 87) {
            this.paramCount++;
        }
        this.symbols.add(symbol);
    }

    public void flattenSymbolTable(boolean z) {
        if (!z) {
            ArrayList arrayList = new ArrayList();
            if (this.symbolTable != null) {
                for (int i = 0; i < this.symbols.size(); i++) {
                    Symbol symbol = this.symbols.get(i);
                    if (symbol.getContainingTable() == this) {
                        arrayList.add(symbol);
                    }
                }
            }
            this.symbols = arrayList;
        }
        this.variableNames = new String[this.symbols.size()];
        this.isConsts = new boolean[this.symbols.size()];
        for (int i2 = 0; i2 < this.symbols.size(); i2++) {
            Symbol symbol2 = this.symbols.get(i2);
            this.variableNames[i2] = symbol2.getName();
            this.isConsts[i2] = symbol2.getDeclType() == 154;
            symbol2.setIndex(i2);
        }
    }

    public int getBaseLineno() {
        return this.lineno;
    }

    public Object getCompilerData() {
        return this.compilerData;
    }

    public String getEncodedSource() {
        return this.encodedSource;
    }

    public int getEncodedSourceEnd() {
        return this.encodedSourceEnd;
    }

    public int getEncodedSourceStart() {
        return this.encodedSourceStart;
    }

    public int getEndLineno() {
        return this.endLineno;
    }

    public int getFunctionCount() {
        return this.functions == null ? 0 : this.functions.size();
    }

    public FunctionNode getFunctionNode(int i) {
        return this.functions.get(i);
    }

    public List<FunctionNode> getFunctions() {
        return this.functions == null ? this.EMPTY_LIST : this.functions;
    }

    public int getIndexForNameNode(Node node) {
        if (this.variableNames == null) {
            codeBug();
        }
        Scope scope = node.getScope();
        Symbol symbol = scope == null ? null : scope.getSymbol(((Name) node).getIdentifier());
        return symbol == null ? -1 : symbol.getIndex();
    }

    public String getNextTempName() {
        StringBuilder sb = new StringBuilder();
        sb.append("$");
        int i = this.tempNumber;
        this.tempNumber = i + 1;
        sb.append(i);
        return sb.toString();
    }

    public boolean[] getParamAndVarConst() {
        if (this.variableNames == null) {
            codeBug();
        }
        return this.isConsts;
    }

    public int getParamAndVarCount() {
        if (this.variableNames == null) {
            codeBug();
        }
        return this.symbols.size();
    }

    public String[] getParamAndVarNames() {
        if (this.variableNames == null) {
            codeBug();
        }
        return this.variableNames;
    }

    public int getParamCount() {
        return this.paramCount;
    }

    public String getParamOrVarName(int i) {
        if (this.variableNames == null) {
            codeBug();
        }
        return this.variableNames[i];
    }

    public int getRegexpCount() {
        return this.regexps == null ? 0 : this.regexps.size();
    }

    public String getRegexpFlags(int i) {
        return this.regexps.get(i).getFlags();
    }

    public String getRegexpString(int i) {
        return this.regexps.get(i).getValue();
    }

    public String getSourceName() {
        return this.sourceName;
    }

    public List<Symbol> getSymbols() {
        return this.symbols;
    }

    public void setBaseLineno(int i) {
        if (i < 0 || this.lineno >= 0) {
            codeBug();
        }
        this.lineno = i;
    }

    public void setCompilerData(Object obj) {
        assertNotNull(obj);
        if (this.compilerData != null) {
            throw new IllegalStateException();
        }
        this.compilerData = obj;
    }

    public void setEncodedSource(String str) {
        this.encodedSource = str;
    }

    public void setEncodedSourceBounds(int i, int i2) {
        this.encodedSourceStart = i;
        this.encodedSourceEnd = i2;
    }

    public void setEncodedSourceEnd(int i) {
        this.encodedSourceEnd = i;
    }

    public void setEncodedSourceStart(int i) {
        this.encodedSourceStart = i;
    }

    public void setEndLineno(int i) {
        if (i < 0 || this.endLineno >= 0) {
            codeBug();
        }
        this.endLineno = i;
    }

    public void setSourceName(String str) {
        this.sourceName = str;
    }

    public void setSymbols(List<Symbol> list) {
        this.symbols = list;
    }

    @Override // org.mozilla.javascript.ast.Scope, org.mozilla.javascript.ast.Jump, org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            Iterator<Node> it = iterator();
            while (it.hasNext()) {
                ((AstNode) it.next()).visit(nodeVisitor);
            }
        }
    }
}
