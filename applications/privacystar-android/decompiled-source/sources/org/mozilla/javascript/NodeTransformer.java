package org.mozilla.javascript;

import java.util.ArrayList;
import java.util.List;
import org.mozilla.javascript.ast.AstRoot;
import org.mozilla.javascript.ast.FunctionNode;
import org.mozilla.javascript.ast.Scope;
import org.mozilla.javascript.ast.ScriptNode;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/NodeTransformer.class */
public class NodeTransformer {
    private boolean hasFinally;
    private ObjArray loopEnds;
    private ObjArray loops;

    private static Node addBeforeCurrent(Node node, Node node2, Node node3, Node node4) {
        if (node2 == null) {
            if (node3 != node.getFirstChild()) {
                Kit.codeBug();
            }
            node.addChildToFront(node4);
        } else {
            if (node3 != node2.getNext()) {
                Kit.codeBug();
            }
            node.addChildAfter(node4, node2);
        }
        return node4;
    }

    private static Node replaceCurrent(Node node, Node node2, Node node3, Node node4) {
        if (node2 == null) {
            if (node3 != node.getFirstChild()) {
                Kit.codeBug();
            }
            node.replaceChild(node3, node4);
        } else if (node2.next == node3) {
            node.replaceChildAfter(node2, node4);
        } else {
            node.replaceChild(node3, node4);
        }
        return node4;
    }

    private void transformCompilationUnit(ScriptNode scriptNode) {
        this.loops = new ObjArray();
        this.loopEnds = new ObjArray();
        this.hasFinally = false;
        boolean z = scriptNode.getType() != 109 || ((FunctionNode) scriptNode).requiresActivation();
        scriptNode.flattenSymbolTable(!z);
        transformCompilationUnit_r(scriptNode, scriptNode, scriptNode, z, (scriptNode instanceof AstRoot) && ((AstRoot) scriptNode).isInStrictMode());
    }

    /* JADX WARN: Code restructure failed: missing block: B:142:0x059c, code lost:
        if (r13.getType() == 13) goto L_0x059f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005a, code lost:
        if (r0 == 157) goto L_0x005d;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x047c  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0483  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0285  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void transformCompilationUnit_r(org.mozilla.javascript.ast.ScriptNode r8, org.mozilla.javascript.Node r9, org.mozilla.javascript.ast.Scope r10, boolean r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 1936
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NodeTransformer.transformCompilationUnit_r(org.mozilla.javascript.ast.ScriptNode, org.mozilla.javascript.Node, org.mozilla.javascript.ast.Scope, boolean, boolean):void");
    }

    public final void transform(ScriptNode scriptNode) {
        transformCompilationUnit(scriptNode);
        for (int i = 0; i != scriptNode.getFunctionCount(); i++) {
            transform(scriptNode.getFunctionNode(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void visitCall(Node node, ScriptNode scriptNode) {
    }

    protected Node visitLet(boolean z, Node node, Node node2, Node node3) {
        Node node4;
        Node node5;
        Node node6;
        Node firstChild = node3.getFirstChild();
        Node next = firstChild.getNext();
        node3.removeChild(firstChild);
        node3.removeChild(next);
        boolean z2 = node3.getType() == 158;
        if (z) {
            Node replaceCurrent = replaceCurrent(node, node2, node3, new Node(z2 ? 159 : 129));
            ArrayList arrayList = new ArrayList();
            Node node7 = new Node(66);
            Node node8 = next;
            for (Node firstChild2 = firstChild.getFirstChild(); firstChild2 != null; firstChild2 = firstChild2.getNext()) {
                if (firstChild2.getType() == 158) {
                    List list = (List) firstChild2.getProp(22);
                    Node firstChild3 = firstChild2.getFirstChild();
                    if (firstChild3.getType() != 153) {
                        throw Kit.codeBug();
                    }
                    node8 = z2 ? new Node(89, firstChild3.getNext(), node8) : new Node(129, new Node(133, firstChild3.getNext()), node8);
                    if (list != null) {
                        arrayList.addAll(list);
                        for (int i = 0; i < list.size(); i++) {
                            node7.addChildToBack(new Node(126, Node.newNumber(0.0d)));
                        }
                    }
                    node6 = firstChild3.getFirstChild();
                } else {
                    node6 = firstChild2;
                }
                if (node6.getType() != 39) {
                    throw Kit.codeBug();
                }
                arrayList.add(ScriptRuntime.getIndexObject(node6.getString()));
                Node firstChild4 = node6.getFirstChild();
                Node node9 = firstChild4;
                if (firstChild4 == null) {
                    node9 = new Node(126, Node.newNumber(0.0d));
                }
                node7.addChildToBack(node9);
            }
            node7.putProp(12, arrayList.toArray());
            replaceCurrent.addChildToBack(new Node(2, node7));
            replaceCurrent.addChildToBack(new Node(123, node8));
            replaceCurrent.addChildToBack(new Node(3));
            node4 = replaceCurrent;
        } else {
            Node replaceCurrent2 = replaceCurrent(node, node2, node3, new Node(z2 ? 89 : 129));
            Node node10 = new Node(89);
            Node node11 = next;
            for (Node firstChild5 = firstChild.getFirstChild(); firstChild5 != null; firstChild5 = firstChild5.getNext()) {
                if (firstChild5.getType() == 158) {
                    Node firstChild6 = firstChild5.getFirstChild();
                    if (firstChild6.getType() != 153) {
                        throw Kit.codeBug();
                    }
                    node11 = z2 ? new Node(89, firstChild6.getNext(), node11) : new Node(129, new Node(133, firstChild6.getNext()), node11);
                    Scope.joinScopes((Scope) firstChild5, (Scope) node3);
                    node5 = firstChild6.getFirstChild();
                } else {
                    node5 = firstChild5;
                }
                if (node5.getType() != 39) {
                    throw Kit.codeBug();
                }
                Node newString = Node.newString(node5.getString());
                newString.setScope((Scope) node3);
                Node firstChild7 = node5.getFirstChild();
                Node node12 = firstChild7;
                if (firstChild7 == null) {
                    node12 = new Node(126, Node.newNumber(0.0d));
                }
                node10.addChildToBack(new Node(56, newString, node12));
            }
            if (z2) {
                replaceCurrent2.addChildToBack(node10);
                node3.setType(89);
                replaceCurrent2.addChildToBack(node3);
                node3.addChildToBack(node11);
                node4 = replaceCurrent2;
                if (node11 instanceof Scope) {
                    Scope scope = (Scope) node11;
                    Scope parentScope = scope.getParentScope();
                    Scope scope2 = (Scope) node3;
                    scope.setParentScope(scope2);
                    scope2.setParentScope(parentScope);
                    node4 = replaceCurrent2;
                }
            } else {
                replaceCurrent2.addChildToBack(new Node(133, node10));
                node3.setType(129);
                replaceCurrent2.addChildToBack(node3);
                node3.addChildrenToBack(node11);
                node4 = replaceCurrent2;
                if (node11 instanceof Scope) {
                    Scope scope3 = (Scope) node11;
                    Scope parentScope2 = scope3.getParentScope();
                    Scope scope4 = (Scope) node3;
                    scope3.setParentScope(scope4);
                    scope4.setParentScope(parentScope2);
                    node4 = replaceCurrent2;
                }
            }
        }
        return node4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void visitNew(Node node, ScriptNode scriptNode) {
    }
}
