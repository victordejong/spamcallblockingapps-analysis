package org.mozilla.javascript.ast;

import android.support.p004v7.widget.helper.ItemTouchHelper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/ArrayComprehension.class */
public class ArrayComprehension extends Scope {
    private AstNode filter;
    private AstNode result;
    private List<ArrayComprehensionLoop> loops = new ArrayList();
    private int ifPosition = -1;

    /* renamed from: lp */
    private int f803lp = -1;

    /* renamed from: rp */
    private int f804rp = -1;

    public ArrayComprehension() {
        this.type = 157;
    }

    public ArrayComprehension(int i) {
        super(i);
        this.type = 157;
    }

    public ArrayComprehension(int i, int i2) {
        super(i, i2);
        this.type = 157;
    }

    public void addLoop(ArrayComprehensionLoop arrayComprehensionLoop) {
        assertNotNull(arrayComprehensionLoop);
        this.loops.add(arrayComprehensionLoop);
        arrayComprehensionLoop.setParent(this);
    }

    public AstNode getFilter() {
        return this.filter;
    }

    public int getFilterLp() {
        return this.f803lp;
    }

    public int getFilterRp() {
        return this.f804rp;
    }

    public int getIfPosition() {
        return this.ifPosition;
    }

    public List<ArrayComprehensionLoop> getLoops() {
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
        this.f803lp = i;
    }

    public void setFilterRp(int i) {
        this.f804rp = i;
    }

    public void setIfPosition(int i) {
        this.ifPosition = i;
    }

    public void setLoops(List<ArrayComprehensionLoop> list) {
        assertNotNull(list);
        this.loops.clear();
        for (ArrayComprehensionLoop arrayComprehensionLoop : list) {
            addLoop(arrayComprehensionLoop);
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
        sb.append("[");
        sb.append(this.result.toSource(0));
        for (ArrayComprehensionLoop arrayComprehensionLoop : this.loops) {
            sb.append(arrayComprehensionLoop.toSource(0));
        }
        if (this.filter != null) {
            sb.append(" if (");
            sb.append(this.filter.toSource(0));
            sb.append(")");
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // org.mozilla.javascript.ast.Scope, org.mozilla.javascript.ast.Jump, org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            this.result.visit(nodeVisitor);
            for (ArrayComprehensionLoop arrayComprehensionLoop : this.loops) {
                arrayComprehensionLoop.visit(nodeVisitor);
            }
            if (this.filter != null) {
                this.filter.visit(nodeVisitor);
            }
        }
    }
}
