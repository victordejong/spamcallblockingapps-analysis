package scala.collection.immutable;

import java.util.NoSuchElementException;
import scala.Function1;
import scala.MatchError;
import scala.None$;
import scala.Option;
import scala.Some;
import scala.Tuple2;
import scala.Tuple4;
import scala.collection.Iterator;
import scala.collection.immutable.RedBlackTree;
import scala.collection.mutable.StringBuilder;
import scala.math.Ordering;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.sys.package$;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/RedBlackTree$.class */
public final class RedBlackTree$ {
    public static final RedBlackTree$ MODULE$ = null;

    static {
        new RedBlackTree$();
    }

    private RedBlackTree$() {
        MODULE$ = this;
    }

    private <A, B, U> void _foreach(RedBlackTree.Tree<A, B> tree, Function1<Tuple2<A, B>, U> function1) {
        while (true) {
            if (tree.left() != null) {
                _foreach(tree.left(), function1);
            }
            function1.apply(new Tuple2<>(tree.key(), tree.value()));
            if (tree.right() == null) {
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
                return;
            }
            tree = tree.right();
        }
    }

    private <A, U> void _foreachKey(RedBlackTree.Tree<A, ?> tree, Function1<A, U> function1) {
        while (true) {
            if (tree.left() != null) {
                _foreachKey(tree.left(), function1);
            }
            function1.apply(tree.key());
            if (tree.right() == null) {
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
                return;
            }
            tree = tree.right();
        }
    }

    private final RedBlackTree.Tree append$1(RedBlackTree.Tree tree, RedBlackTree.Tree tree2) {
        if (tree != null) {
            if (tree2 != null) {
                if (isRedTree(tree) && isRedTree(tree2)) {
                    RedBlackTree.Tree append$1 = append$1(tree.right(), tree2.left());
                    if (isRedTree(append$1)) {
                        RedBlackTree$RedTree$ redBlackTree$RedTree$ = RedBlackTree$RedTree$.MODULE$;
                        Object key = append$1.key();
                        Object value = append$1.value();
                        RedBlackTree$RedTree$ redBlackTree$RedTree$2 = RedBlackTree$RedTree$.MODULE$;
                        RedBlackTree.RedTree redTree = new RedBlackTree.RedTree(tree.key(), tree.value(), tree.left(), append$1.left());
                        RedBlackTree$RedTree$ redBlackTree$RedTree$3 = RedBlackTree$RedTree$.MODULE$;
                        tree = new RedBlackTree.RedTree(key, value, redTree, new RedBlackTree.RedTree(tree2.key(), tree2.value(), append$1.right(), tree2.right()));
                    } else {
                        RedBlackTree$RedTree$ redBlackTree$RedTree$4 = RedBlackTree$RedTree$.MODULE$;
                        Object key2 = tree.key();
                        Object value2 = tree.value();
                        RedBlackTree.Tree left = tree.left();
                        RedBlackTree$RedTree$ redBlackTree$RedTree$5 = RedBlackTree$RedTree$.MODULE$;
                        tree2 = new RedBlackTree.RedTree(key2, value2, left, new RedBlackTree.RedTree(tree2.key(), tree2.value(), append$1, tree2.right()));
                    }
                } else if (scala$collection$immutable$RedBlackTree$$isBlackTree(tree) && scala$collection$immutable$RedBlackTree$$isBlackTree(tree2)) {
                    RedBlackTree.Tree append$12 = append$1(tree.right(), tree2.left());
                    if (isRedTree(append$12)) {
                        RedBlackTree$RedTree$ redBlackTree$RedTree$6 = RedBlackTree$RedTree$.MODULE$;
                        Object key3 = append$12.key();
                        Object value3 = append$12.value();
                        RedBlackTree$BlackTree$ redBlackTree$BlackTree$ = RedBlackTree$BlackTree$.MODULE$;
                        RedBlackTree.BlackTree blackTree = new RedBlackTree.BlackTree(tree.key(), tree.value(), tree.left(), append$12.left());
                        RedBlackTree$BlackTree$ redBlackTree$BlackTree$2 = RedBlackTree$BlackTree$.MODULE$;
                        tree = new RedBlackTree.RedTree(key3, value3, blackTree, new RedBlackTree.BlackTree(tree2.key(), tree2.value(), append$12.right(), tree2.right()));
                    } else {
                        Object key4 = tree.key();
                        Object value4 = tree.value();
                        RedBlackTree.Tree left2 = tree.left();
                        RedBlackTree$BlackTree$ redBlackTree$BlackTree$3 = RedBlackTree$BlackTree$.MODULE$;
                        tree = balLeft$1(key4, value4, left2, new RedBlackTree.BlackTree(tree2.key(), tree2.value(), append$12, tree2.right()));
                    }
                } else if (isRedTree(tree2)) {
                    RedBlackTree$RedTree$ redBlackTree$RedTree$7 = RedBlackTree$RedTree$.MODULE$;
                    tree = new RedBlackTree.RedTree(tree2.key(), tree2.value(), append$1(tree, tree2.left()), tree2.right());
                } else if (!isRedTree(tree)) {
                    throw package$.MODULE$.error(new StringBuilder().append((Object) "unmatched tree on append: ").append(tree).append((Object) ", ").append(tree2).toString());
                } else {
                    RedBlackTree$RedTree$ redBlackTree$RedTree$8 = RedBlackTree$RedTree$.MODULE$;
                    tree2 = new RedBlackTree.RedTree(tree.key(), tree.value(), tree.left(), append$1(tree.right(), tree2));
                }
            }
            return tree;
        }
        tree = tree2;
        return tree;
    }

    private final RedBlackTree.Tree balLeft$1(Object obj, Object obj2, RedBlackTree.Tree tree, RedBlackTree.Tree tree2) {
        RedBlackTree.RedTree redTree;
        if (isRedTree(tree)) {
            RedBlackTree$RedTree$ redBlackTree$RedTree$ = RedBlackTree$RedTree$.MODULE$;
            redTree = new RedBlackTree.RedTree(obj, obj2, tree.black(), tree2);
        } else if (scala$collection$immutable$RedBlackTree$$isBlackTree(tree2)) {
            redTree = balance$1(obj, obj2, tree, tree2.red());
        } else if (!isRedTree(tree2) || !scala$collection$immutable$RedBlackTree$$isBlackTree(tree2.left())) {
            throw package$.MODULE$.error("Defect: invariance violation");
        } else {
            RedBlackTree$RedTree$ redBlackTree$RedTree$2 = RedBlackTree$RedTree$.MODULE$;
            Object key = tree2.left().key();
            Object value = tree2.left().value();
            RedBlackTree$BlackTree$ redBlackTree$BlackTree$ = RedBlackTree$BlackTree$.MODULE$;
            redTree = new RedBlackTree.RedTree(key, value, new RedBlackTree.BlackTree(obj, obj2, tree, tree2.left().left()), balance$1(tree2.key(), tree2.value(), tree2.left().right(), subl$1(tree2.right())));
        }
        return redTree;
    }

    private final RedBlackTree.Tree balRight$1(Object obj, Object obj2, RedBlackTree.Tree tree, RedBlackTree.Tree tree2) {
        RedBlackTree.RedTree redTree;
        if (isRedTree(tree2)) {
            RedBlackTree$RedTree$ redBlackTree$RedTree$ = RedBlackTree$RedTree$.MODULE$;
            redTree = new RedBlackTree.RedTree(obj, obj2, tree, tree2.black());
        } else if (scala$collection$immutable$RedBlackTree$$isBlackTree(tree)) {
            redTree = balance$1(obj, obj2, tree.red(), tree2);
        } else if (!isRedTree(tree) || !scala$collection$immutable$RedBlackTree$$isBlackTree(tree.right())) {
            throw package$.MODULE$.error("Defect: invariance violation");
        } else {
            RedBlackTree$RedTree$ redBlackTree$RedTree$2 = RedBlackTree$RedTree$.MODULE$;
            Object key = tree.right().key();
            Object value = tree.right().value();
            RedBlackTree.Tree balance$1 = balance$1(tree.key(), tree.value(), subl$1(tree.left()), tree.right().left());
            RedBlackTree$BlackTree$ redBlackTree$BlackTree$ = RedBlackTree$BlackTree$.MODULE$;
            redTree = new RedBlackTree.RedTree(key, value, balance$1, new RedBlackTree.BlackTree(obj, obj2, tree.right().right(), tree2));
        }
        return redTree;
    }

    private final RedBlackTree.Tree balance$1(Object obj, Object obj2, RedBlackTree.Tree tree, RedBlackTree.Tree tree2) {
        RedBlackTree.RedTree redTree;
        if (isRedTree(tree)) {
            if (isRedTree(tree2)) {
                RedBlackTree$RedTree$ redBlackTree$RedTree$ = RedBlackTree$RedTree$.MODULE$;
                redTree = new RedBlackTree.RedTree(obj, obj2, tree.black(), tree2.black());
            } else if (isRedTree(tree.left())) {
                RedBlackTree$RedTree$ redBlackTree$RedTree$2 = RedBlackTree$RedTree$.MODULE$;
                Object key = tree.key();
                Object value = tree.value();
                RedBlackTree.Tree black = tree.left().black();
                RedBlackTree$BlackTree$ redBlackTree$BlackTree$ = RedBlackTree$BlackTree$.MODULE$;
                redTree = new RedBlackTree.RedTree(key, value, black, new RedBlackTree.BlackTree(obj, obj2, tree.right(), tree2));
            } else if (isRedTree(tree.right())) {
                RedBlackTree$RedTree$ redBlackTree$RedTree$3 = RedBlackTree$RedTree$.MODULE$;
                Object key2 = tree.right().key();
                Object value2 = tree.right().value();
                RedBlackTree$BlackTree$ redBlackTree$BlackTree$2 = RedBlackTree$BlackTree$.MODULE$;
                RedBlackTree.BlackTree blackTree = new RedBlackTree.BlackTree(tree.key(), tree.value(), tree.left(), tree.right().left());
                RedBlackTree$BlackTree$ redBlackTree$BlackTree$3 = RedBlackTree$BlackTree$.MODULE$;
                redTree = new RedBlackTree.RedTree(key2, value2, blackTree, new RedBlackTree.BlackTree(obj, obj2, tree.right().right(), tree2));
            } else {
                RedBlackTree$BlackTree$ redBlackTree$BlackTree$4 = RedBlackTree$BlackTree$.MODULE$;
                redTree = new RedBlackTree.BlackTree(obj, obj2, tree, tree2);
            }
        } else if (!isRedTree(tree2)) {
            RedBlackTree$BlackTree$ redBlackTree$BlackTree$5 = RedBlackTree$BlackTree$.MODULE$;
            redTree = new RedBlackTree.BlackTree(obj, obj2, tree, tree2);
        } else if (isRedTree(tree2.right())) {
            RedBlackTree$RedTree$ redBlackTree$RedTree$4 = RedBlackTree$RedTree$.MODULE$;
            Object key3 = tree2.key();
            Object value3 = tree2.value();
            RedBlackTree$BlackTree$ redBlackTree$BlackTree$6 = RedBlackTree$BlackTree$.MODULE$;
            redTree = new RedBlackTree.RedTree(key3, value3, new RedBlackTree.BlackTree(obj, obj2, tree, tree2.left()), tree2.right().black());
        } else if (isRedTree(tree2.left())) {
            RedBlackTree$RedTree$ redBlackTree$RedTree$5 = RedBlackTree$RedTree$.MODULE$;
            Object key4 = tree2.left().key();
            Object value4 = tree2.left().value();
            RedBlackTree$BlackTree$ redBlackTree$BlackTree$7 = RedBlackTree$BlackTree$.MODULE$;
            RedBlackTree.BlackTree blackTree2 = new RedBlackTree.BlackTree(obj, obj2, tree, tree2.left().left());
            RedBlackTree$BlackTree$ redBlackTree$BlackTree$8 = RedBlackTree$BlackTree$.MODULE$;
            redTree = new RedBlackTree.RedTree(key4, value4, blackTree2, new RedBlackTree.BlackTree(tree2.key(), tree2.value(), tree2.left().right(), tree2.right()));
        } else {
            RedBlackTree$BlackTree$ redBlackTree$BlackTree$9 = RedBlackTree$BlackTree$.MODULE$;
            redTree = new RedBlackTree.BlackTree(obj, obj2, tree, tree2);
        }
        return redTree;
    }

    private <A, B> RedBlackTree.Tree<A, B> blacken(RedBlackTree.Tree<A, B> tree) {
        return tree == null ? null : tree.black();
    }

    private <A, B> Tuple4<RedBlackTree.NList<RedBlackTree.Tree<A, B>>, Object, Object, Object> compareDepth(RedBlackTree.Tree<A, B> tree, RedBlackTree.Tree<A, B> tree2) {
        return unzipBoth$1(tree, tree2, null, null, 0);
    }

    private <A, B> RedBlackTree.Tree<A, B> del(RedBlackTree.Tree<A, B> tree, A a, Ordering<A> ordering) {
        RedBlackTree.Tree<A, B> tree2;
        if (tree == null) {
            tree2 = null;
        } else {
            int compare = ordering.compare(a, tree.key());
            tree2 = compare < 0 ? delLeft$1(tree, a, ordering) : compare > 0 ? delRight$1(tree, a, ordering) : append$1(tree.left(), tree.right());
        }
        return tree2;
    }

    private final RedBlackTree.Tree delLeft$1(RedBlackTree.Tree tree, Object obj, Ordering ordering) {
        RedBlackTree.RedTree redTree;
        if (scala$collection$immutable$RedBlackTree$$isBlackTree(tree.left())) {
            redTree = balLeft$1(tree.key(), tree.value(), del(tree.left(), obj, ordering), tree.right());
        } else {
            RedBlackTree$RedTree$ redBlackTree$RedTree$ = RedBlackTree$RedTree$.MODULE$;
            redTree = new RedBlackTree.RedTree(tree.key(), tree.value(), del(tree.left(), obj, ordering), tree.right());
        }
        return redTree;
    }

    private final RedBlackTree.Tree delRight$1(RedBlackTree.Tree tree, Object obj, Ordering ordering) {
        RedBlackTree.RedTree redTree;
        if (scala$collection$immutable$RedBlackTree$$isBlackTree(tree.right())) {
            redTree = balRight$1(tree.key(), tree.value(), tree.left(), del(tree.right(), obj, ordering));
        } else {
            RedBlackTree$RedTree$ redBlackTree$RedTree$ = RedBlackTree$RedTree$.MODULE$;
            redTree = new RedBlackTree.RedTree(tree.key(), tree.value(), tree.left(), del(tree.right(), obj, ordering));
        }
        return redTree;
    }

    private <A, B> RedBlackTree.Tree<A, B> doDrop(RedBlackTree.Tree<A, B> tree, int i) {
        if (i <= 0) {
            return tree;
        }
        if (i >= count(tree)) {
            return null;
        }
        int count = count(tree.left());
        if (i > count) {
            return doDrop(tree.right(), (i - count) - 1);
        }
        RedBlackTree.Tree<A, B> doDrop = doDrop(tree.left(), i);
        if (doDrop != tree.left()) {
            tree = doDrop == null ? updNth(tree.right(), (i - count) - 1, tree.key(), tree.value(), false) : rebalance(tree, doDrop, tree.right());
        }
        return tree;
    }

    private <A, B> RedBlackTree.Tree<A, B> doFrom(RedBlackTree.Tree<A, B> tree, A a, Ordering<A> ordering) {
        if (tree == null) {
            return null;
        }
        if (ordering.mo36lt(tree.key(), a)) {
            return doFrom(tree.right(), a, ordering);
        }
        RedBlackTree.Tree<A, B> doFrom = doFrom(tree.left(), a, ordering);
        if (doFrom != tree.left()) {
            tree = doFrom == null ? upd(tree.right(), tree.key(), tree.value(), false, ordering) : rebalance(tree, doFrom, tree.right());
        }
        return tree;
    }

    private <A, B> RedBlackTree.Tree<A, B> doRange(RedBlackTree.Tree<A, B> tree, A a, A a2, Ordering<A> ordering) {
        if (tree == null) {
            return null;
        }
        if (ordering.mo36lt(tree.key(), a)) {
            return doRange(tree.right(), a, a2, ordering);
        }
        if (ordering.lteq(a2, tree.key())) {
            return doRange(tree.left(), a, a2, ordering);
        }
        RedBlackTree.Tree<A, B> doFrom = doFrom(tree.left(), a, ordering);
        RedBlackTree.Tree<A, B> doUntil = doUntil(tree.right(), a2, ordering);
        if (doFrom != tree.left() || doUntil != tree.right()) {
            tree = doFrom == null ? upd(doUntil, tree.key(), tree.value(), false, ordering) : doUntil == null ? upd(doFrom, tree.key(), tree.value(), false, ordering) : rebalance(tree, doFrom, doUntil);
        }
        return tree;
    }

    private <A, B> RedBlackTree.Tree<A, B> doSlice(RedBlackTree.Tree<A, B> tree, int i, int i2) {
        if (tree == null) {
            return null;
        }
        int count = count(tree.left());
        if (i > count) {
            return doSlice(tree.right(), (i - count) - 1, (i2 - count) - 1);
        }
        if (i2 <= count) {
            return doSlice(tree.left(), i, i2);
        }
        RedBlackTree.Tree<A, B> doDrop = doDrop(tree.left(), i);
        RedBlackTree.Tree<A, B> doTake = doTake(tree.right(), (i2 - count) - 1);
        if (doDrop != tree.left() || doTake != tree.right()) {
            tree = doDrop == null ? updNth(doTake, (i - count) - 1, tree.key(), tree.value(), false) : doTake == null ? updNth(doDrop, i2, tree.key(), tree.value(), false) : rebalance(tree, doDrop, doTake);
        }
        return tree;
    }

    private <A, B> RedBlackTree.Tree<A, B> doTake(RedBlackTree.Tree<A, B> tree, int i) {
        if (i <= 0) {
            return null;
        }
        if (i >= count(tree)) {
            return tree;
        }
        int count = count(tree.left());
        if (i <= count) {
            return doTake(tree.left(), i);
        }
        RedBlackTree.Tree<A, B> doTake = doTake(tree.right(), (i - count) - 1);
        if (doTake != tree.right()) {
            tree = doTake == null ? updNth(tree.left(), i, tree.key(), tree.value(), false) : rebalance(tree, tree.left(), doTake);
        }
        return tree;
    }

    private <A, B> RedBlackTree.Tree<A, B> doTo(RedBlackTree.Tree<A, B> tree, A a, Ordering<A> ordering) {
        if (tree == null) {
            return null;
        }
        if (ordering.mo36lt(a, tree.key())) {
            return doTo(tree.left(), a, ordering);
        }
        RedBlackTree.Tree<A, B> doTo = doTo(tree.right(), a, ordering);
        if (doTo != tree.right()) {
            tree = doTo == null ? upd(tree.left(), tree.key(), tree.value(), false, ordering) : rebalance(tree, tree.left(), doTo);
        }
        return tree;
    }

    private <A, B> RedBlackTree.Tree<A, B> doUntil(RedBlackTree.Tree<A, B> tree, A a, Ordering<A> ordering) {
        if (tree == null) {
            return null;
        }
        if (ordering.lteq(a, tree.key())) {
            return doUntil(tree.left(), a, ordering);
        }
        RedBlackTree.Tree<A, B> doUntil = doUntil(tree.right(), a, ordering);
        if (doUntil != tree.right()) {
            tree = doUntil == null ? upd(tree.left(), tree.key(), tree.value(), false, ordering) : rebalance(tree, tree.left(), doUntil);
        }
        return tree;
    }

    private final RedBlackTree.NList findDepth$1(RedBlackTree.NList nList, int i) {
        while (nList != null) {
            if (!scala$collection$immutable$RedBlackTree$$isBlackTree((RedBlackTree.Tree) nList.head())) {
                nList = nList.tail();
            } else if (i == 1) {
                return nList;
            } else {
                nList = nList.tail();
                i--;
            }
        }
        throw package$.MODULE$.error("Defect: unexpected empty zipper while computing range");
    }

    private boolean isRedTree(RedBlackTree.Tree<?, ?> tree) {
        return tree instanceof RedBlackTree.RedTree;
    }

    private <A, B> RedBlackTree.Tree<A, B> mkTree(boolean z, A a, B b, RedBlackTree.Tree<A, B> tree, RedBlackTree.Tree<A, B> tree2) {
        RedBlackTree.BlackTree blackTree;
        if (z) {
            RedBlackTree$BlackTree$ redBlackTree$BlackTree$ = RedBlackTree$BlackTree$.MODULE$;
            blackTree = new RedBlackTree.BlackTree(a, b, tree, tree2);
        } else {
            RedBlackTree$RedTree$ redBlackTree$RedTree$ = RedBlackTree$RedTree$.MODULE$;
            blackTree = new RedBlackTree.RedTree(a, b, tree, tree2);
        }
        return blackTree;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [scala.collection.immutable.RedBlackTree$RedTree] */
    /* JADX WARN: Type inference failed for: r0v32, types: [scala.collection.immutable.RedBlackTree$RedTree] */
    private <A, B> RedBlackTree.Tree<A, B> rebalance(RedBlackTree.Tree<A, B> tree, RedBlackTree.Tree<A, B> tree2, RedBlackTree.Tree<A, B> tree3) {
        RedBlackTree.BlackTree blackTree;
        B b;
        RedBlackTree.Tree<A, B> blacken = blacken(tree2);
        RedBlackTree.Tree<A, B> blacken2 = blacken(tree3);
        Tuple4<RedBlackTree.NList<RedBlackTree.Tree<A, B>>, Object, Object, Object> compareDepth = compareDepth(blacken, blacken2);
        if (compareDepth != null) {
            Tuple4 tuple4 = new Tuple4(compareDepth.mo237_1(), compareDepth.mo236_2(), compareDepth.mo235_3(), compareDepth.mo234_4());
            RedBlackTree.NList nList = (RedBlackTree.NList) tuple4.mo237_1();
            boolean unboxToBoolean = BoxesRunTime.unboxToBoolean(tuple4.mo236_2());
            boolean unboxToBoolean2 = BoxesRunTime.unboxToBoolean(tuple4.mo235_3());
            int unboxToInt = BoxesRunTime.unboxToInt(tuple4.mo234_4());
            if (unboxToBoolean) {
                RedBlackTree$BlackTree$ redBlackTree$BlackTree$ = RedBlackTree$BlackTree$.MODULE$;
                blackTree = new RedBlackTree.BlackTree(tree.key(), tree.value(), blacken, blacken2);
            } else {
                RedBlackTree.NList findDepth$1 = findDepth$1(nList, unboxToInt);
                if (unboxToBoolean2) {
                    RedBlackTree$RedTree$ redBlackTree$RedTree$ = RedBlackTree$RedTree$.MODULE$;
                    b = new RedBlackTree.RedTree(tree.key(), tree.value(), blacken, (RedBlackTree.Tree) findDepth$1.head());
                } else {
                    RedBlackTree$RedTree$ redBlackTree$RedTree$2 = RedBlackTree$RedTree$.MODULE$;
                    b = new RedBlackTree.RedTree(tree.key(), tree.value(), (RedBlackTree.Tree) findDepth$1.head(), blacken2);
                }
                blackTree = (RedBlackTree.Tree) RedBlackTree$NList$.MODULE$.foldLeft(findDepth$1.tail(), b, new RedBlackTree$$anonfun$1(unboxToBoolean2));
            }
            return blackTree;
        }
        throw new MatchError(compareDepth);
    }

    private final RedBlackTree.Tree subl$1(RedBlackTree.Tree tree) {
        if (tree instanceof RedBlackTree.BlackTree) {
            return tree.red();
        }
        throw package$.MODULE$.error(new StringBuilder().append((Object) "Defect: invariance violation; expected black, got ").append(tree).toString());
    }

    private final RedBlackTree.NList unzip$1(RedBlackTree.NList nList, boolean z) {
        while (true) {
            RedBlackTree.Tree tree = (RedBlackTree.Tree) nList.head();
            RedBlackTree.Tree left = z ? tree.left() : tree.right();
            if (left == null) {
                return nList;
            }
            nList = RedBlackTree$NList$.MODULE$.cons(left, nList);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r1v16, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v18, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v21, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    private final Tuple4 unzipBoth$1(RedBlackTree.Tree tree, RedBlackTree.Tree tree2, RedBlackTree.NList nList, RedBlackTree.NList nList2, int i) {
        Tuple4 tuple4;
        RedBlackTree.Tree tree3;
        RedBlackTree.Tree tree4;
        while (true) {
            if (scala$collection$immutable$RedBlackTree$$isBlackTree(tree == true ? 1 : 0) && scala$collection$immutable$RedBlackTree$$isBlackTree(tree2)) {
                RedBlackTree.Tree right = tree.right();
                RedBlackTree.Tree left = tree2.left();
                nList = RedBlackTree$NList$.MODULE$.cons(tree, nList);
                nList2 = RedBlackTree$NList$.MODULE$.cons(tree2, nList2);
                i++;
                tree4 = left;
                tree3 = right;
            } else if (isRedTree(tree) && isRedTree(tree2)) {
                RedBlackTree.Tree right2 = tree.right();
                RedBlackTree.Tree left2 = tree2.left();
                nList = RedBlackTree$NList$.MODULE$.cons(tree, nList);
                nList2 = RedBlackTree$NList$.MODULE$.cons(tree2, nList2);
                tree3 = right2;
                tree4 = left2;
            } else if (!isRedTree(tree2)) {
                if (!isRedTree(tree)) {
                    break;
                }
                RedBlackTree.Tree right3 = tree.right();
                nList = RedBlackTree$NList$.MODULE$.cons(tree, nList);
                tree = right3;
            } else {
                RedBlackTree.Tree left3 = tree2.left();
                nList2 = RedBlackTree$NList$.MODULE$.cons(tree2, nList2);
                tree2 = left3;
            }
            RedBlackTree.Tree tree5 = tree4;
            tree = tree3;
            tree2 = tree5;
        }
        if (tree != true && tree2 == null) {
            tuple4 = new Tuple4(null, BoxesRunTime.boxToBoolean(true), BoxesRunTime.boxToBoolean(false), BoxesRunTime.boxToInteger(i));
        } else if (tree != true && scala$collection$immutable$RedBlackTree$$isBlackTree(tree2)) {
            tuple4 = new Tuple4(unzip$1(RedBlackTree$NList$.MODULE$.cons(tree2, nList2), true), BoxesRunTime.boxToBoolean(false), BoxesRunTime.boxToBoolean(true), BoxesRunTime.boxToInteger(i));
        } else if (!scala$collection$immutable$RedBlackTree$$isBlackTree(tree) || tree2 != null) {
            throw package$.MODULE$.error(new StringBuilder().append((Object) "unmatched trees in unzip: ").append((Object) tree).append((Object) ", ").append(tree2).toString());
        } else {
            tuple4 = new Tuple4(unzip$1(RedBlackTree$NList$.MODULE$.cons(tree, nList), false), BoxesRunTime.boxToBoolean(false), BoxesRunTime.boxToBoolean(false), BoxesRunTime.boxToInteger(i));
        }
        return tuple4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00d2, code lost:
        if ((r14 == r0 ? true : r14 == null ? false : r14 instanceof java.lang.Number ? scala.runtime.BoxesRunTime.equalsNumObject((java.lang.Number) r14, r0) : r14 instanceof java.lang.Character ? scala.runtime.BoxesRunTime.equalsCharObject((java.lang.Character) r14, r0) : r14.equals(r0)) != false) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private <A, B, B1> scala.collection.immutable.RedBlackTree.Tree<A, B1> upd(scala.collection.immutable.RedBlackTree.Tree<A, B> r13, A r14, B1 r15, boolean r16, scala.math.Ordering<A> r17) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.immutable.RedBlackTree$.upd(scala.collection.immutable.RedBlackTree$Tree, java.lang.Object, java.lang.Object, boolean, scala.math.Ordering):scala.collection.immutable.RedBlackTree$Tree");
    }

    private <A, B, B1> RedBlackTree.Tree<A, B1> updNth(RedBlackTree.Tree<A, B> tree, int i, A a, B1 b1, boolean z) {
        if (tree == null) {
            RedBlackTree$RedTree$ redBlackTree$RedTree$ = RedBlackTree$RedTree$.MODULE$;
            tree = new RedBlackTree.RedTree(a, b1, null, null);
        } else {
            int count = count(tree.left()) + 1;
            if (i < count) {
                tree = scala$collection$immutable$RedBlackTree$$balanceLeft(scala$collection$immutable$RedBlackTree$$isBlackTree(tree), tree.key(), tree.value(), updNth(tree.left(), i, a, b1, z), tree.right());
            } else if (i > count) {
                tree = scala$collection$immutable$RedBlackTree$$balanceRight(scala$collection$immutable$RedBlackTree$$isBlackTree(tree), tree.key(), tree.value(), tree.left(), updNth(tree.right(), i - count, a, b1, z));
            } else if (z) {
                tree = mkTree(scala$collection$immutable$RedBlackTree$$isBlackTree(tree), a, b1, tree.left(), tree.right());
            }
        }
        return (RedBlackTree.Tree<A, B1>) tree;
    }

    public <A> boolean contains(RedBlackTree.Tree<A, ?> tree, A a, Ordering<A> ordering) {
        return lookup(tree, a, ordering) != null;
    }

    public int count(RedBlackTree.Tree<?, ?> tree) {
        return tree == null ? 0 : tree.count();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <A> int countInRange(RedBlackTree.Tree<A, ?> tree, Option<A> option, Option<A> option2, Ordering<A> ordering) {
        int i;
        while (true) {
            if (tree != null) {
                Tuple2 tuple2 = new Tuple2(option, option2);
                if (None$.MODULE$.equals(tuple2.mo269_1()) && None$.MODULE$.equals(tuple2.mo268_2())) {
                    i = tree.count();
                    break;
                } else if ((tuple2.mo269_1() instanceof Some) && ordering.mo36lt(tree.key(), ((Some) tuple2.mo269_1()).m362x())) {
                    tree = tree.right();
                } else if (!(tuple2.mo268_2() instanceof Some) || !ordering.gteq(tree.key(), ((Some) tuple2.mo268_2()).m362x())) {
                    break;
                } else {
                    tree = tree.left();
                }
            } else {
                i = 0;
                break;
            }
        }
        i = countInRange(tree.left(), option, None$.MODULE$, ordering) + 1 + countInRange(tree.right(), None$.MODULE$, option2, ordering);
        return i;
    }

    public <A, B> RedBlackTree.Tree<A, B> delete(RedBlackTree.Tree<A, B> tree, A a, Ordering<A> ordering) {
        return blacken(del(tree, a, ordering));
    }

    public <A, B> RedBlackTree.Tree<A, B> drop(RedBlackTree.Tree<A, B> tree, int i, Ordering<A> ordering) {
        return blacken(doDrop(tree, i));
    }

    public <A, B, U> void foreach(RedBlackTree.Tree<A, B> tree, Function1<Tuple2<A, B>, U> function1) {
        if (tree != null) {
            _foreach(tree, function1);
        }
    }

    public <A, U> void foreachKey(RedBlackTree.Tree<A, ?> tree, Function1<A, U> function1) {
        if (tree != null) {
            _foreachKey(tree, function1);
        }
    }

    public <A, B> RedBlackTree.Tree<A, B> from(RedBlackTree.Tree<A, B> tree, A a, Ordering<A> ordering) {
        return blacken(doFrom(tree, a, ordering));
    }

    public <A, B> Option<B> get(RedBlackTree.Tree<A, B> tree, A a, Ordering<A> ordering) {
        RedBlackTree.Tree<A, B> lookup = lookup(tree, a, ordering);
        return lookup == null ? None$.MODULE$ : new Some(lookup.value());
    }

    public <A, B> RedBlackTree.Tree<A, B> greatest(RedBlackTree.Tree<A, B> tree) {
        if (tree != null) {
            while (tree.right() != null) {
                tree = tree.right();
            }
            return tree;
        }
        throw new NoSuchElementException("empty map");
    }

    public boolean isBlack(RedBlackTree.Tree<?, ?> tree) {
        return tree == null || scala$collection$immutable$RedBlackTree$$isBlackTree(tree);
    }

    public boolean isEmpty(RedBlackTree.Tree<?, ?> tree) {
        return tree == null;
    }

    public <A, B> Iterator<Tuple2<A, B>> iterator(RedBlackTree.Tree<A, B> tree, Option<A> option, Ordering<A> ordering) {
        return new RedBlackTree.EntriesIterator(tree, option, ordering);
    }

    public <A, B> None$ iterator$default$2() {
        return None$.MODULE$;
    }

    public <A> Iterator<A> keysIterator(RedBlackTree.Tree<A, ?> tree, Option<A> option, Ordering<A> ordering) {
        return new RedBlackTree.KeysIterator(tree, option, ordering);
    }

    public <A> None$ keysIterator$default$2() {
        return None$.MODULE$;
    }

    public <A, B> RedBlackTree.Tree<A, B> lookup(RedBlackTree.Tree<A, B> tree, A a, Ordering<A> ordering) {
        RedBlackTree.Tree<A, B> tree2;
        while (true) {
            if (tree != null) {
                int compare = ordering.compare(a, tree.key());
                if (compare >= 0) {
                    tree2 = tree;
                    if (compare <= 0) {
                        break;
                    }
                    tree = tree.right();
                } else {
                    tree = tree.left();
                }
            } else {
                tree2 = null;
                break;
            }
        }
        return tree2;
    }

    public <A, B> RedBlackTree.Tree<A, B> nth(RedBlackTree.Tree<A, B> tree, int i) {
        while (true) {
            int count = count(tree.left());
            if (i < count) {
                tree = tree.left();
            } else if (i <= count) {
                return tree;
            } else {
                tree = tree.right();
                i = (i - count) - 1;
            }
        }
    }

    public <A, B> RedBlackTree.Tree<A, B> range(RedBlackTree.Tree<A, B> tree, A a, A a2, Ordering<A> ordering) {
        return blacken(doRange(tree, a, a2, ordering));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <A, B> RedBlackTree.Tree<A, B> rangeImpl(RedBlackTree.Tree<A, B> tree, Option<A> option, Option<A> option2, Ordering<A> ordering) {
        Tuple2 tuple2 = new Tuple2(option, option2);
        if (tuple2.mo269_1() instanceof Some) {
            Some some = (Some) tuple2.mo269_1();
            if (tuple2.mo268_2() instanceof Some) {
                tree = range(tree, some.m362x(), ((Some) tuple2.mo268_2()).m362x(), ordering);
                return tree;
            }
        }
        if (tuple2.mo269_1() instanceof Some) {
            Some some2 = (Some) tuple2.mo269_1();
            if (None$.MODULE$.equals(tuple2.mo268_2())) {
                tree = from(tree, some2.m362x(), ordering);
                return tree;
            }
        }
        if (None$.MODULE$.equals(tuple2.mo269_1()) && (tuple2.mo268_2() instanceof Some)) {
            tree = until(tree, ((Some) tuple2.mo268_2()).m362x(), ordering);
        } else if (!None$.MODULE$.equals(tuple2.mo269_1()) || !None$.MODULE$.equals(tuple2.mo268_2())) {
            throw new MatchError(tuple2);
        }
        return tree;
    }

    public <A, B, B1> RedBlackTree.Tree<A, B1> scala$collection$immutable$RedBlackTree$$balanceLeft(boolean z, A a, B b, RedBlackTree.Tree<A, B1> tree, RedBlackTree.Tree<A, B1> tree2) {
        RedBlackTree.RedTree redTree;
        if (isRedTree(tree) && isRedTree(tree.left())) {
            RedBlackTree$RedTree$ redBlackTree$RedTree$ = RedBlackTree$RedTree$.MODULE$;
            A key = tree.key();
            B1 value = tree.value();
            RedBlackTree$BlackTree$ redBlackTree$BlackTree$ = RedBlackTree$BlackTree$.MODULE$;
            RedBlackTree.BlackTree blackTree = new RedBlackTree.BlackTree(tree.left().key(), tree.left().value(), tree.left().left(), tree.left().right());
            RedBlackTree$BlackTree$ redBlackTree$BlackTree$2 = RedBlackTree$BlackTree$.MODULE$;
            redTree = new RedBlackTree.RedTree(key, value, blackTree, new RedBlackTree.BlackTree(a, b, tree.right(), tree2));
        } else if (!isRedTree(tree) || !isRedTree(tree.right())) {
            redTree = mkTree(z, a, b, tree, tree2);
        } else {
            RedBlackTree$RedTree$ redBlackTree$RedTree$2 = RedBlackTree$RedTree$.MODULE$;
            A key2 = tree.right().key();
            B1 value2 = tree.right().value();
            RedBlackTree$BlackTree$ redBlackTree$BlackTree$3 = RedBlackTree$BlackTree$.MODULE$;
            RedBlackTree.BlackTree blackTree2 = new RedBlackTree.BlackTree(tree.key(), tree.value(), tree.left(), tree.right().left());
            RedBlackTree$BlackTree$ redBlackTree$BlackTree$4 = RedBlackTree$BlackTree$.MODULE$;
            redTree = new RedBlackTree.RedTree(key2, value2, blackTree2, new RedBlackTree.BlackTree(a, b, tree.right().right(), tree2));
        }
        return redTree;
    }

    public <A, B, B1> RedBlackTree.Tree<A, B1> scala$collection$immutable$RedBlackTree$$balanceRight(boolean z, A a, B b, RedBlackTree.Tree<A, B1> tree, RedBlackTree.Tree<A, B1> tree2) {
        RedBlackTree.RedTree redTree;
        if (isRedTree(tree2) && isRedTree(tree2.left())) {
            RedBlackTree$RedTree$ redBlackTree$RedTree$ = RedBlackTree$RedTree$.MODULE$;
            A key = tree2.left().key();
            B1 value = tree2.left().value();
            RedBlackTree$BlackTree$ redBlackTree$BlackTree$ = RedBlackTree$BlackTree$.MODULE$;
            RedBlackTree.BlackTree blackTree = new RedBlackTree.BlackTree(a, b, tree, tree2.left().left());
            RedBlackTree$BlackTree$ redBlackTree$BlackTree$2 = RedBlackTree$BlackTree$.MODULE$;
            redTree = new RedBlackTree.RedTree(key, value, blackTree, new RedBlackTree.BlackTree(tree2.key(), tree2.value(), tree2.left().right(), tree2.right()));
        } else if (!isRedTree(tree2) || !isRedTree(tree2.right())) {
            redTree = mkTree(z, a, b, tree, tree2);
        } else {
            RedBlackTree$RedTree$ redBlackTree$RedTree$2 = RedBlackTree$RedTree$.MODULE$;
            A key2 = tree2.key();
            B1 value2 = tree2.value();
            RedBlackTree$BlackTree$ redBlackTree$BlackTree$3 = RedBlackTree$BlackTree$.MODULE$;
            RedBlackTree.BlackTree blackTree2 = new RedBlackTree.BlackTree(a, b, tree, tree2.left());
            RedBlackTree$BlackTree$ redBlackTree$BlackTree$4 = RedBlackTree$BlackTree$.MODULE$;
            redTree = new RedBlackTree.RedTree(key2, value2, blackTree2, new RedBlackTree.BlackTree(tree2.right().key(), tree2.right().value(), tree2.right().left(), tree2.right().right()));
        }
        return redTree;
    }

    public boolean scala$collection$immutable$RedBlackTree$$isBlackTree(RedBlackTree.Tree<?, ?> tree) {
        return tree instanceof RedBlackTree.BlackTree;
    }

    public <A, B> RedBlackTree.Tree<A, B> slice(RedBlackTree.Tree<A, B> tree, int i, int i2, Ordering<A> ordering) {
        return blacken(doSlice(tree, i, i2));
    }

    public <A, B> RedBlackTree.Tree<A, B> smallest(RedBlackTree.Tree<A, B> tree) {
        if (tree != null) {
            while (tree.left() != null) {
                tree = tree.left();
            }
            return tree;
        }
        throw new NoSuchElementException("empty map");
    }

    public <A, B> RedBlackTree.Tree<A, B> take(RedBlackTree.Tree<A, B> tree, int i, Ordering<A> ordering) {
        return blacken(doTake(tree, i));
    }

    /* renamed from: to */
    public <A, B> RedBlackTree.Tree<A, B> m150to(RedBlackTree.Tree<A, B> tree, A a, Ordering<A> ordering) {
        return blacken(doTo(tree, a, ordering));
    }

    public <A, B> RedBlackTree.Tree<A, B> until(RedBlackTree.Tree<A, B> tree, A a, Ordering<A> ordering) {
        return blacken(doUntil(tree, a, ordering));
    }

    public <A, B, B1> RedBlackTree.Tree<A, B1> update(RedBlackTree.Tree<A, B> tree, A a, B1 b1, boolean z, Ordering<A> ordering) {
        return blacken(upd(tree, a, b1, z, ordering));
    }

    public <A, B> Iterator<B> valuesIterator(RedBlackTree.Tree<A, B> tree, Option<A> option, Ordering<A> ordering) {
        return new RedBlackTree.ValuesIterator(tree, option, ordering);
    }

    public <A, B> None$ valuesIterator$default$2() {
        return None$.MODULE$;
    }
}
