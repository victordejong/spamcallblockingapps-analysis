package org.mozilla.javascript.ast;

import android.support.p004v7.widget.helper.ItemTouchHelper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/GeneratorExpression.class */
public class GeneratorExpression extends Scope {
    private AstNode filter;
    private AstNode result;
    private List<GeneratorExpressionLoop> loops = new ArrayList();
    private int ifPosition = -1;

    /* renamed from: lp */
    private int f813lp = -1;

    /* renamed from: rp */
    private int f814rp = -1;

    public GeneratorExpression() {
        this.type = 162;
    }

    public GeneratorExpression(int i) {
        super(i);
        this.type = 162;
    }

    public GeneratorExpression(int i, int i2) {
        super(i, i2);
        this.type = 162;
    }

    public void addLoop(GeneratorExpressionLoop generatorExpressionLoop) {
        assertNotNull(generatorExpressionLoop);
        this.loops.add(generatorExpressionLoop);
        generatorExpressionLoop.setParent(this);
    }

    public AstNode getFilter() {
        return this.filter;
    }

    public int getFilterLp() {
        return this.f813lp;
    }

    public int getFilterRp() {
        return this.f814rp;
    }

    public int getIfPosition() {
        return this.ifPosition;
    }

    public List<GeneratorExpressionLoop> getLoops() {
        return this.loops;
    }

    public AstNode getResult() {
        return this.result;
    }

    public void setFilter(AstNode astNode) {
        this.filter = astNode;
        if (astNode != null) {
            astNode.setParent(this);
        }
    }

    public void setFilterLp(int i) {
        this.f813lp = i;
    }

    public void setFilterRp(int i) {
        this.f814rp = i;
    }

    public void setIfPosition(int i) {
        this.ifPosition = i;
    }

    public void setLoops(List<GeneratorExpressionLoop> list) {
        assertNotNull(list);
        this.loops.clear();
        for (GeneratorExpressionLoop generatorExpressionLoop : list) {
            addLoop(generatorExpressionLoop);
        }
    }

    public void setResult(AstNode astNode) {
        assertNotNull(astNode);
        this.result = astNode;
        astNode.setParent(this);
    }

    @Override // org.mozilla.javascript.ast.Scope, org.mozilla.javascript.ast.Jump, org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        StringBuilder sb = new StringBuilder((int) ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
        sb.append("(");
        sb.append(this.result.toSource(0));
        for (GeneratorExpressionLoop generatorExpressionLoop : this.loops) {
            sb.append(generatorExpressionLoop.toSource(0));
        }
        if (this.filter != null) {
            sb.append(" if (");
            sb.append(this.filter.toSource(0));
            sb.append(")");
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // org.mozilla.javascript.ast.Scope, org.mozilla.javascript.ast.Jump, org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            this.result.visit(nodeVisitor);
            for (GeneratorExpressionLoop generatorExpressionLoop : this.loops) {
                generatorExpressionLoop.visit(nodeVisitor);
            }
            if (this.filter != null) {
                this.filter.visit(nodeVisitor);
            }
        }
    }
}
