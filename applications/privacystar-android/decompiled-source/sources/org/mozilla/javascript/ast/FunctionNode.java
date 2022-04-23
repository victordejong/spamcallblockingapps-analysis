package org.mozilla.javascript.ast;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.p018io.IOUtils;
import org.mozilla.javascript.Node;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/FunctionNode.class */
public class FunctionNode extends ScriptNode {
    public static final int FUNCTION_EXPRESSION = 2;
    public static final int FUNCTION_EXPRESSION_STATEMENT = 3;
    public static final int FUNCTION_STATEMENT = 1;
    private static final List<AstNode> NO_PARAMS = Collections.unmodifiableList(new ArrayList());
    private AstNode body;
    private Name functionName;
    private int functionType;
    private List<Node> generatorResumePoints;
    private boolean isExpressionClosure;
    private boolean isGenerator;
    private Map<Node, int[]> liveLocals;
    private AstNode memberExprNode;
    private boolean needsActivation;
    private List<AstNode> params;
    private Form functionForm = Form.FUNCTION;

    /* renamed from: lp */
    private int f811lp = -1;

    /* renamed from: rp */
    private int f812rp = -1;

    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/FunctionNode$Form.class */
    public enum Form {
        FUNCTION,
        GETTER,
        SETTER
    }

    public FunctionNode() {
        this.type = 109;
    }

    public FunctionNode(int i) {
        super(i);
        this.type = 109;
    }

    public FunctionNode(int i, Name name) {
        super(i);
        this.type = 109;
        setFunctionName(name);
    }

    @Override // org.mozilla.javascript.ast.ScriptNode
    public int addFunction(FunctionNode functionNode) {
        int addFunction = super.addFunction(functionNode);
        if (getFunctionCount() > 0) {
            this.needsActivation = true;
        }
        return addFunction;
    }

    public void addLiveLocals(Node node, int[] iArr) {
        if (this.liveLocals == null) {
            this.liveLocals = new HashMap();
        }
        this.liveLocals.put(node, iArr);
    }

    public void addParam(AstNode astNode) {
        assertNotNull(astNode);
        if (this.params == null) {
            this.params = new ArrayList();
        }
        this.params.add(astNode);
        astNode.setParent(this);
    }

    public void addResumptionPoint(Node node) {
        if (this.generatorResumePoints == null) {
            this.generatorResumePoints = new ArrayList();
        }
        this.generatorResumePoints.add(node);
    }

    public AstNode getBody() {
        return this.body;
    }

    public Name getFunctionName() {
        return this.functionName;
    }

    public int getFunctionType() {
        return this.functionType;
    }

    public Map<Node, int[]> getLiveLocals() {
        return this.liveLocals;
    }

    public int getLp() {
        return this.f811lp;
    }

    public AstNode getMemberExprNode() {
        return this.memberExprNode;
    }

    public String getName() {
        return this.functionName != null ? this.functionName.getIdentifier() : "";
    }

    public List<AstNode> getParams() {
        return this.params != null ? this.params : NO_PARAMS;
    }

    public List<Node> getResumptionPoints() {
        return this.generatorResumePoints;
    }

    public int getRp() {
        return this.f812rp;
    }

    public boolean isExpressionClosure() {
        return this.isExpressionClosure;
    }

    public boolean isGenerator() {
        return this.isGenerator;
    }

    public boolean isGetter() {
        return this.functionForm == Form.GETTER;
    }

    public boolean isGetterOrSetter() {
        return this.functionForm == Form.GETTER || this.functionForm == Form.SETTER;
    }

    public boolean isParam(AstNode astNode) {
        return this.params == null ? false : this.params.contains(astNode);
    }

    public boolean isSetter() {
        return this.functionForm == Form.SETTER;
    }

    public boolean requiresActivation() {
        return this.needsActivation;
    }

    public void setBody(AstNode astNode) {
        assertNotNull(astNode);
        this.body = astNode;
        if (Boolean.TRUE.equals(astNode.getProp(25))) {
            setIsExpressionClosure(true);
        }
        int position = astNode.getPosition() + astNode.getLength();
        astNode.setParent(this);
        setLength(position - this.position);
        setEncodedSourceBounds(this.position, position);
    }

    public void setFunctionIsGetter() {
        this.functionForm = Form.GETTER;
    }

    public void setFunctionIsSetter() {
        this.functionForm = Form.SETTER;
    }

    public void setFunctionName(Name name) {
        this.functionName = name;
        if (name != null) {
            name.setParent(this);
        }
    }

    public void setFunctionType(int i) {
        this.functionType = i;
    }

    public void setIsExpressionClosure(boolean z) {
        this.isExpressionClosure = z;
    }

    public void setIsGenerator() {
        this.isGenerator = true;
    }

    public void setLp(int i) {
        this.f811lp = i;
    }

    public void setMemberExprNode(AstNode astNode) {
        this.memberExprNode = astNode;
        if (astNode != null) {
            astNode.setParent(this);
        }
    }

    public void setParams(List<AstNode> list) {
        if (list == null) {
            this.params = null;
            return;
        }
        if (this.params != null) {
            this.params.clear();
        }
        for (AstNode astNode : list) {
            addParam(astNode);
        }
    }

    public void setParens(int i, int i2) {
        this.f811lp = i;
        this.f812rp = i2;
    }

    public void setRequiresActivation() {
        this.needsActivation = true;
    }

    public void setRp(int i) {
        this.f812rp = i;
    }

    @Override // org.mozilla.javascript.ast.Scope, org.mozilla.javascript.ast.Jump, org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        StringBuilder sb = new StringBuilder();
        if (!isGetterOrSetter()) {
            sb.append(makeIndent(i));
            sb.append("function");
        }
        if (this.functionName != null) {
            sb.append(" ");
            sb.append(this.functionName.toSource(0));
        }
        if (this.params == null) {
            sb.append("() ");
        } else {
            sb.append("(");
            printList(this.params, sb);
            sb.append(") ");
        }
        if (this.isExpressionClosure) {
            AstNode body = getBody();
            if (body.getLastChild() instanceof ReturnStatement) {
                sb.append(((ReturnStatement) body.getLastChild()).getReturnValue().toSource(0));
                if (this.functionType == 1) {
                    sb.append(";");
                }
            } else {
                sb.append(" ");
                sb.append(body.toSource(0));
            }
        } else {
            sb.append(getBody().toSource(i).trim());
        }
        if (this.functionType == 1 || isGetterOrSetter()) {
            sb.append(IOUtils.LINE_SEPARATOR_UNIX);
        }
        return sb.toString();
    }

    @Override // org.mozilla.javascript.ast.ScriptNode, org.mozilla.javascript.ast.Scope, org.mozilla.javascript.ast.Jump, org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            if (this.functionName != null) {
                this.functionName.visit(nodeVisitor);
            }
            for (AstNode astNode : getParams()) {
                astNode.visit(nodeVisitor);
            }
            getBody().visit(nodeVisitor);
            if (!(this.isExpressionClosure || this.memberExprNode == null)) {
                this.memberExprNode.visit(nodeVisitor);
            }
        }
    }
}
