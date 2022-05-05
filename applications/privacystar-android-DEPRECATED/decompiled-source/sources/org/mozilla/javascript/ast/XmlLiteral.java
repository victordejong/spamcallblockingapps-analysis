package org.mozilla.javascript.ast;

import android.support.p004v7.widget.helper.ItemTouchHelper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ast/XmlLiteral.class */
public class XmlLiteral extends AstNode {
    private List<XmlFragment> fragments = new ArrayList();

    public XmlLiteral() {
        this.type = 145;
    }

    public XmlLiteral(int i) {
        super(i);
        this.type = 145;
    }

    public XmlLiteral(int i, int i2) {
        super(i, i2);
        this.type = 145;
    }

    public void addFragment(XmlFragment xmlFragment) {
        assertNotNull(xmlFragment);
        this.fragments.add(xmlFragment);
        xmlFragment.setParent(this);
    }

    public List<XmlFragment> getFragments() {
        return this.fragments;
    }

    public void setFragments(List<XmlFragment> list) {
        assertNotNull(list);
        this.fragments.clear();
        for (XmlFragment xmlFragment : list) {
            addFragment(xmlFragment);
        }
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        StringBuilder sb = new StringBuilder((int) ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
        for (XmlFragment xmlFragment : this.fragments) {
            sb.append(xmlFragment.toSource(0));
        }
        return sb.toString();
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            for (XmlFragment xmlFragment : this.fragments) {
                xmlFragment.visit(nodeVisitor);
            }
        }
    }
}
