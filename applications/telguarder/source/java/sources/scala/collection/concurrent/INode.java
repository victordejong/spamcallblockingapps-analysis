package scala.collection.concurrent;

import scala.MatchError;
import scala.Predef$;
import scala.collection.immutable.StringOps;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001\u0005]g!B\u0001\u0003\u0005\u0011A!!B%O_\u0012,'BA\u0002\u0005\u0003)\u0019wN\\2veJ,g\u000e\u001e\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\fWcA\u0005\u00119M\u0011\u0001A\u0003\t\u0005\u00171q1$D\u0001\u0003\u0013\ti!AA\u0005J\u001d>$WMQ1tKB\u0011q\u0002\u0005\u0007\u0001\t\u0015\t\u0002A1\u0001\u0014\u0005\u0005Y5\u0001A\t\u0003)a\u0001\"!\u0006\f\u000e\u0003\u0019I!a\u0006\u0004\u0003\u000f9{G\u000f[5oOB\u0011Q#G\u0005\u00035\u0019\u00111!\u00118z!\tyA\u0004B\u0003\u001e\u0001\t\u00071CA\u0001W\u0011!y\u0002A!A!\u0002\u0013\u0001\u0013A\u00012o!\u0011Y\u0011ED\u000e\n\u0005\t\u0012!\u0001C'bS:tu\u000eZ3\t\u0011\u0011\u0002!\u0011!Q\u0001\n\u0015\n\u0011a\u001a\t\u0003\u0017\u0019J!a\n\u0002\u0003\u0007\u001d+g\u000eC\u0003*\u0001\u0011\u0005!&\u0001\u0004=S:LGO\u0010\u000b\u0004W1j\u0003\u0003B\u0006\u0001\u001dmAQa\b\u0015A\u0002\u0001BQ\u0001\n\u0015A\u0002\u0015BQ!\u000b\u0001\u0005\u0002=\"\"a\u000b\u0019\t\u000b\u0011r\u0003\u0019A\u0013\t\u000bI\u0002A\u0011A\u001a\u0002\u000b]\u0013\u0016\nV#\u0015\u0005Q:\u0004CA\u000b6\u0013\t1dA\u0001\u0003V]&$\b\"\u0002\u001d2\u0001\u0004\u0001\u0013\u0001\u00028wC2DQA\u000f\u0001\u0005\u0002m\n1aQ!T)\rat(\u0011\t\u0003+uJ!A\u0010\u0004\u0003\u000f\t{w\u000e\\3b]\")\u0001)\u000fa\u0001A\u0005\u0019q\u000e\u001c3\t\u000b\tK\u0004\u0019\u0001\u0011\u0002\u00039DQ\u0001\u0012\u0001\u0005\u0002\u0015\u000b\u0001bZ2bgJ+\u0017\r\u001a\u000b\u0003A\u0019CQaR\"A\u0002!\u000b!a\u0019;\u0011\t-IebG\u0005\u0003\u0015\n\u0011q\u0001\u0016:jK6\u000b\u0007\u000fC\u0003M\u0001\u0011\u0005Q*A\u0005H\u0007\u0006\u001bvLU#B\tR\u0011\u0001E\u0014\u0005\u0006\u000f.\u0003\r\u0001\u0013\u0005\u0006!\u0002!I!U\u0001\u000e\u000f\u000e\u000b5kX\"p[BdW\r^3\u0015\u0007\u0001\u0012F\u000bC\u0003T\u001f\u0002\u0007\u0001%A\u0001n\u0011\u00159u\n1\u0001IQ\tye\u000b\u0005\u0002X56\t\u0001L\u0003\u0002Z\r\u0005Q\u0011M\u001c8pi\u0006$\u0018n\u001c8\n\u0005mC&a\u0002;bS2\u0014Xm\u0019\u0005\u0006;\u0002!\tAX\u0001\u0005\u000f\u000e\u000b5\u000b\u0006\u0003=?\u0002\f\u0007\"\u0002!]\u0001\u0004\u0001\u0003\"\u0002\"]\u0001\u0004\u0001\u0003\"B$]\u0001\u0004A\u0005\"B2\u0001\t\u0013!\u0017!B3rk\u0006dG\u0003\u0002\u001ffO&DQA\u001a2A\u00029\t!a[\u0019\t\u000b!\u0014\u0007\u0019\u0001\b\u0002\u0005-\u0014\u0004\"B$c\u0001\u0004A\u0005\"B6\u0001\t\u0013a\u0017!B5o_\u0012,GCA\u0016n\u0011\u0015q'\u000e1\u0001!\u0003\t\u0019g\u000eC\u0003q\u0001\u0011\u0005\u0011/A\u0005d_BLHk\\$f]R\u00191F\u001d;\t\u000bM|\u0007\u0019A\u0013\u0002\t9<WM\u001c\u0005\u0006\u000f>\u0004\r\u0001\u0013\u0005\u0006m\u0002!\ta^\u0001\u000be\u0016\u001cw,\u001b8tKJ$H\u0003\u0004\u001fyur\f\u0019!a\u0002\u0002\f\u0005=\u0001\"B=v\u0001\u0004q\u0011!A6\t\u000bm,\b\u0019A\u000e\u0002\u0003YDQ!`;A\u0002y\f!\u0001[2\u0011\u0005Uy\u0018bAA\u0001\r\t\u0019\u0011J\u001c;\t\r\u0005\u0015Q\u000f1\u0001\u007f\u0003\raWM\u001e\u0005\u0007\u0003\u0013)\b\u0019A\u0016\u0002\rA\f'/\u001a8u\u0011\u0019\ti!\u001ea\u0001K\u0005A1\u000f^1si\u001e,g\u000eC\u0003Hk\u0002\u0007\u0001\n\u000b\u0002v-\"9\u0011Q\u0003\u0001\u0005\u0002\u0005]\u0011\u0001\u0004:fG~Kgn]3si&4GCEA\r\u0003?\t\t#a\t\u0002&\u0005=\u0012\u0011GA\u001a\u0003k\u0001B!FA\u000e7%\u0019\u0011Q\u0004\u0004\u0003\r=\u0003H/[8o\u0011\u0019I\u00181\u0003a\u0001\u001d!110a\u0005A\u0002mAa!`A\n\u0001\u0004q\b\u0002CA\u0014\u0003'\u0001\r!!\u000b\u0002\t\r|g\u000e\u001a\t\u0004+\u0005-\u0012bAA\u0017\r\t1\u0011I\\=SK\u001aDq!!\u0002\u0002\u0014\u0001\u0007a\u0010C\u0004\u0002\n\u0005M\u0001\u0019A\u0016\t\u000f\u00055\u00111\u0003a\u0001K!1q)a\u0005A\u0002!C3!a\u0005W\u0011\u001d\tY\u0004\u0001C\u0001\u0003{\t!B]3d?2|wn[;q)9\tI#a\u0010\u0002B\u0005\r\u0013QIA$\u0003\u0013Ba!_A\u001d\u0001\u0004q\u0001BB?\u0002:\u0001\u0007a\u0010C\u0004\u0002\u0006\u0005e\u0002\u0019\u0001@\t\u000f\u0005%\u0011\u0011\ba\u0001W!9\u0011QBA\u001d\u0001\u0004)\u0003BB$\u0002:\u0001\u0007\u0001\nK\u0002\u0002:YCq!a\u0014\u0001\t\u0003\t\t&\u0001\u0006sK\u000e|&/Z7pm\u0016$\u0002#!\u0007\u0002T\u0005U\u0013qKA-\u00037\ni&a\u0018\t\re\fi\u00051\u0001\u000f\u0011\u0019Y\u0018Q\na\u00017!1Q0!\u0014A\u0002yDq!!\u0002\u0002N\u0001\u0007a\u0010C\u0004\u0002\n\u00055\u0003\u0019A\u0016\t\u000f\u00055\u0011Q\na\u0001K!1q)!\u0014A\u0002!Cq!a\u0019\u0001\t\u0013\t)'A\u0003dY\u0016\fg\u000eF\u00045\u0003O\nY'!\u001c\t\u000f\u0005%\u0014\u0011\ra\u0001W\u0005\u0011a\u000e\u001a\u0005\u0007\u000f\u0006\u0005\u0004\u0019\u0001%\t\u000f\u0005\u0015\u0011\u0011\ra\u0001}\"9\u0011\u0011\u000f\u0001\u0005\u0002\u0005M\u0014aC5t\u001dVdG.\u00138pI\u0016$2\u0001PA;\u0011\u00199\u0015q\u000ea\u0001\u0011\"9\u0011\u0011\u0010\u0001\u0005\u0002\u0005m\u0014AC2bG\",GmU5{KR\u0019a0! \t\r\u001d\u000b9\b1\u0001I\u0011\u001d\t\t\t\u0001C\u0001\u0003\u0007\u000baa\u001d;sS:<G\u0003BAC\u0003'\u0003B!a\"\u0002\u000e:\u0019Q#!#\n\u0007\u0005-e!\u0001\u0004Qe\u0016$WMZ\u0005\u0005\u0003\u001f\u000b\tJ\u0001\u0004TiJLgn\u001a\u0006\u0004\u0003\u00173\u0001bBA\u0003\u0003\u007f\u0002\rA`\u0004\t\u0003/\u0013\u0001\u0012\u0001\u0002\u0002\u001a\u0006)\u0011JT8eKB\u00191\"a'\u0007\u000f\u0005\u0011\u0001\u0012\u0001\u0002\u0002\u001eN!\u00111TA\u0015\u0011\u001dI\u00131\u0014C\u0001\u0003C#\"!!'\t\u0015\u0005\u0015\u00161\u0014b\u0001\n\u0003\t9+A\u0006L\u000bf{\u0006KU#T\u000b:#VCAAU!\u0011\tY+!.\u000e\u0005\u00055&\u0002BAX\u0003c\u000bA\u0001\\1oO*\u0011\u00111W\u0001\u0005U\u00064\u0018-\u0003\u0003\u00028\u00065&AB(cU\u0016\u001cG\u000fC\u0005\u0002<\u0006m\u0005\u0015!\u0003\u0002*\u0006a1*R-`!J+5+\u0012(UA!Q\u0011qXAN\u0005\u0004%\t!a*\u0002\u0015-+\u0015lX!C'\u0016sE\u000bC\u0005\u0002D\u0006m\u0005\u0015!\u0003\u0002*\u0006Y1*R-`\u0003\n\u001bVI\u0014+!\u0011!\t9-a'\u0005\u0002\u0005%\u0017a\u00038foJ{w\u000e\u001e(pI\u0016,b!a3\u0002R\u0006UWCAAg!\u0019Y\u0001!a4\u0002TB\u0019q\"!5\u0005\rE\t)M1\u0001\u0014!\ry\u0011Q\u001b\u0003\u0007;\u0005\u0015'\u0019A\n")
/* loaded from: classes3-dex2jar.jar:scala/collection/concurrent/INode.class */
public final class INode<K, V> extends INodeBase<K, V> {
    public INode(Gen gen) {
        this(null, gen);
    }

    public INode(MainNode<K, V> mainNode, Gen gen) {
        super(gen);
        WRITE(mainNode);
    }

    private MainNode<K, V> GCAS_Complete(MainNode<K, V> mainNode, TrieMap<K, V> trieMap) {
        while (true) {
            if (mainNode != null) {
                MainNode<K, V> mainNode2 = mainNode.prev;
                INode<K, V> readRoot = trieMap.readRoot(true);
                if (mainNode2 == null) {
                    break;
                } else if (mainNode2 instanceof FailedNode) {
                    FailedNode failedNode = (FailedNode) mainNode2;
                    if (CAS(mainNode, failedNode.prev)) {
                        mainNode = failedNode.prev;
                        break;
                    }
                    mainNode = this.mainnode;
                } else if (mainNode2 == null) {
                    throw new MatchError(mainNode2);
                } else {
                    if (readRoot.gen != this.gen || !trieMap.nonReadOnly()) {
                        mainNode.CAS_PREV(mainNode2, new FailedNode(mainNode2));
                        mainNode = this.mainnode;
                    } else if (mainNode.CAS_PREV(mainNode2, null)) {
                        break;
                    }
                }
            } else {
                mainNode = null;
                break;
            }
        }
        return mainNode;
    }

    public static Object KEY_ABSENT() {
        return INode$.MODULE$.KEY_ABSENT();
    }

    public static Object KEY_PRESENT() {
        return INode$.MODULE$.KEY_PRESENT();
    }

    private void clean(INode<K, V> iNode, TrieMap<K, V> trieMap, int i) {
        MainNode<K, V> GCAS_READ = iNode.GCAS_READ(trieMap);
        if (!(GCAS_READ instanceof CNode)) {
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
            return;
        }
        CNode cNode = (CNode) GCAS_READ;
        iNode.GCAS(cNode, cNode.toCompressed(trieMap, i, this.gen), trieMap);
        BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00ad, code lost:
        r0 = scala.runtime.BoxedUnit.UNIT;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void cleanParent$1(java.lang.Object r8, int r9, int r10, scala.collection.concurrent.INode r11, scala.collection.concurrent.Gen r12, scala.collection.concurrent.TrieMap r13) {
        /*
            r7 = this;
        L0:
            r0 = r11
            r1 = r13
            scala.collection.concurrent.MainNode r0 = r0.GCAS_READ(r1)
            r14 = r0
            r0 = r14
            boolean r0 = r0 instanceof scala.collection.concurrent.CNode
            if (r0 == 0) goto Lc4
            r0 = r14
            scala.collection.concurrent.CNode r0 = (scala.collection.concurrent.CNode) r0
            r14 = r0
            r0 = r10
            r1 = 5
            int r0 = r0 - r1
            r15 = r0
            r0 = r14
            int r0 = r0.bitmap()
            r16 = r0
            r0 = 1
            r1 = r9
            r2 = r15
            int r1 = r1 >>> r2
            r2 = 31
            r1 = r1 & r2
            int r0 = r0 << r1
            r17 = r0
            r0 = r16
            r1 = r17
            r0 = r0 & r1
            if (r0 != 0) goto L3e
            scala.runtime.BoxedUnit r0 = scala.runtime.BoxedUnit.UNIT
            r8 = r0
            goto Lc8
        L3e:
            r0 = r17
            r1 = 1
            int r0 = r0 - r1
            r1 = r16
            r0 = r0 & r1
            int r0 = java.lang.Integer.bitCount(r0)
            r16 = r0
            r0 = r14
            scala.collection.concurrent.BasicNode[] r0 = r0.array()
            r1 = r16
            r0 = r0[r1]
            r1 = r7
            if (r0 != r1) goto Lbd
            r0 = r8
            boolean r0 = r0 instanceof scala.collection.concurrent.TNode
            if (r0 == 0) goto Lb4
            r0 = r11
            r1 = r14
            r2 = r14
            r3 = r16
            r4 = r8
            scala.collection.concurrent.TNode r4 = (scala.collection.concurrent.TNode) r4
            scala.collection.concurrent.SNode r4 = r4.copyUntombed()
            r5 = r7
            scala.collection.concurrent.Gen r5 = r5.gen
            scala.collection.concurrent.CNode r2 = r2.updatedAt(r3, r4, r5)
            r3 = r15
            scala.collection.concurrent.MainNode r2 = r2.toContracted(r3)
            r3 = r13
            boolean r0 = r0.GCAS(r1, r2, r3)
            if (r0 == 0) goto L87
            scala.runtime.BoxedUnit r0 = scala.runtime.BoxedUnit.UNIT
            r8 = r0
            goto Lbd
        L87:
            r0 = r13
            r1 = r13
            boolean r1 = r1.readRoot$default$1()
            scala.collection.concurrent.INode r0 = r0.readRoot(r1)
            scala.collection.concurrent.Gen r0 = r0.gen
            r14 = r0
            r0 = r14
            if (r0 != 0) goto La3
            r0 = r12
            if (r0 == 0) goto L0
            goto Lad
        La3:
            r0 = r14
            r1 = r12
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L0
        Lad:
            scala.runtime.BoxedUnit r0 = scala.runtime.BoxedUnit.UNIT
            r8 = r0
            goto Lbd
        Lb4:
            scala.MatchError r0 = new scala.MatchError
            r1 = r0
            r2 = r8
            r1.<init>(r2)
            throw r0
        Lbd:
            scala.runtime.BoxedUnit r0 = scala.runtime.BoxedUnit.UNIT
            r8 = r0
            goto Lc8
        Lc4:
            scala.runtime.BoxedUnit r0 = scala.runtime.BoxedUnit.UNIT
            r8 = r0
        Lc8:
            scala.runtime.BoxedUnit r0 = scala.runtime.BoxedUnit.UNIT
            r8 = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.concurrent.INode.cleanParent$1(java.lang.Object, int, int, scala.collection.concurrent.INode, scala.collection.concurrent.Gen, scala.collection.concurrent.TrieMap):void");
    }

    private final Object cleanReadOnly$1(TNode tNode, Object obj, int i, int i2, INode iNode, TrieMap trieMap) {
        Object obj2;
        if (trieMap.nonReadOnly()) {
            clean(iNode, trieMap, i2 - 5);
            obj2 = INodeBase.RESTART;
        } else {
            if (tNode.m177hc() == i) {
                Object m176k = tNode.m176k();
                if (m176k == obj ? true : m176k == null ? false : m176k instanceof Number ? BoxesRunTime.equalsNumObject((Number) m176k, obj) : m176k instanceof Character ? BoxesRunTime.equalsCharObject((Character) m176k, obj) : m176k.equals(obj)) {
                    obj2 = tNode.m175v();
                }
            }
            obj2 = null;
        }
        return obj2;
    }

    private boolean equal(K k, K k2, TrieMap<K, V> trieMap) {
        return trieMap.equality().equiv(k, k2);
    }

    private INode<K, V> inode(MainNode<K, V> mainNode) {
        INode<K, V> iNode = new INode<>(this.gen);
        iNode.WRITE(mainNode);
        return iNode;
    }

    private final boolean insertln$1(Object obj, Object obj2, TrieMap trieMap, LNode lNode) {
        return GCAS(lNode, lNode.inserted(obj, obj2), trieMap);
    }

    public static <K, V> INode<K, V> newRootNode() {
        return INode$.MODULE$.newRootNode();
    }

    public boolean CAS(MainNode<K, V> mainNode, MainNode<K, V> mainNode2) {
        return INodeBase.updater.compareAndSet(this, mainNode, mainNode2);
    }

    public boolean GCAS(MainNode<K, V> mainNode, MainNode<K, V> mainNode2, TrieMap<K, V> trieMap) {
        mainNode2.WRITE_PREV(mainNode);
        boolean z = false;
        if (CAS(mainNode, mainNode2)) {
            GCAS_Complete(mainNode2, trieMap);
            z = false;
            if (mainNode2.prev == null) {
                z = true;
            }
        }
        return z;
    }

    public MainNode<K, V> GCAS_READ(TrieMap<K, V> trieMap) {
        MainNode<K, V> mainNode = this.mainnode;
        return mainNode.prev == null ? mainNode : GCAS_Complete(mainNode, trieMap);
    }

    public void WRITE(MainNode<K, V> mainNode) {
        INodeBase.updater.set(this, mainNode);
    }

    public int cachedSize(TrieMap<K, V> trieMap) {
        return GCAS_READ(trieMap).cachedSize(trieMap);
    }

    public INode<K, V> copyToGen(Gen gen, TrieMap<K, V> trieMap) {
        INode<K, V> iNode = new INode<>(gen);
        iNode.WRITE(GCAS_READ(trieMap));
        return iNode;
    }

    public MainNode<K, V> gcasRead(TrieMap<K, V> trieMap) {
        return GCAS_READ(trieMap);
    }

    public boolean isNullInode(TrieMap<K, V> trieMap) {
        return GCAS_READ(trieMap) == null;
    }

    public boolean rec_insert(K k, V v, int i, int i2, INode<K, V> iNode, Gen gen, TrieMap<K, V> trieMap) {
        boolean z;
        INode<K, V> iNode2 = iNode;
        INode<K, V> iNode3 = this;
        while (true) {
            MainNode<K, V> GCAS_READ = iNode3.GCAS_READ(trieMap);
            z = false;
            if (GCAS_READ instanceof CNode) {
                CNode cNode = (CNode) GCAS_READ;
                int i3 = 1 << ((i >>> i2) & 31);
                int bitmap = cNode.bitmap();
                int bitCount = Integer.bitCount((i3 - 1) & bitmap);
                if ((bitmap & i3) != 0) {
                    BasicNode basicNode = cNode.array()[bitCount];
                    if (basicNode instanceof INode) {
                        INode<K, V> iNode4 = (INode) basicNode;
                        if (gen == iNode4.gen) {
                            i2 += 5;
                            iNode2 = iNode3;
                            iNode3 = iNode4;
                        } else if (!iNode3.GCAS(cNode, cNode.renewed(gen, trieMap), trieMap)) {
                            break;
                        }
                    } else if (!(basicNode instanceof SNode)) {
                        throw new MatchError(basicNode);
                    } else {
                        SNode<K, V> sNode = (SNode) basicNode;
                        if (sNode.m180hc() != i || !iNode3.equal(sNode.m179k(), k, trieMap)) {
                            z = iNode3.GCAS(cNode, (cNode.gen() == iNode3.gen ? cNode : cNode.renewed(iNode3.gen, trieMap)).updatedAt(bitCount, iNode3.inode(CNode$.MODULE$.dual(sNode, sNode.m180hc(), new SNode<>(k, v, i), i, i2 + 5, iNode3.gen)), iNode3.gen), trieMap);
                        } else {
                            z = iNode3.GCAS(cNode, cNode.updatedAt(bitCount, new SNode(k, v, i), iNode3.gen), trieMap);
                        }
                    }
                } else {
                    z = iNode3.GCAS(cNode, (cNode.gen() == iNode3.gen ? cNode : cNode.renewed(iNode3.gen, trieMap)).insertedAt(bitCount, i3, new SNode(k, v, i), iNode3.gen), trieMap);
                }
            } else if (GCAS_READ instanceof TNode) {
                iNode3.clean(iNode2, trieMap, i2 - 5);
            } else if (!(GCAS_READ instanceof LNode)) {
                throw new MatchError(GCAS_READ);
            } else {
                LNode lNode = (LNode) GCAS_READ;
                z = iNode3.GCAS(lNode, lNode.inserted(k, v), trieMap);
            }
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:161:0x0545, code lost:
        if (r23.insertln$1(r15, r16, r22, r0) != false) goto L162;
     */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0447  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0499  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public scala.Option<V> rec_insertif(K r15, V r16, int r17, java.lang.Object r18, int r19, scala.collection.concurrent.INode<K, V> r20, scala.collection.concurrent.Gen r21, scala.collection.concurrent.TrieMap<K, V> r22) {
        /*
            Method dump skipped, instructions count: 1840
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.concurrent.INode.rec_insertif(java.lang.Object, java.lang.Object, int, java.lang.Object, int, scala.collection.concurrent.INode, scala.collection.concurrent.Gen, scala.collection.concurrent.TrieMap):scala.Option");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00aa, code lost:
        r12 = r9;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object rec_lookup(K r9, int r10, int r11, scala.collection.concurrent.INode<K, V> r12, scala.collection.concurrent.Gen r13, scala.collection.concurrent.TrieMap<K, V> r14) {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.concurrent.INode.rec_lookup(java.lang.Object, int, int, scala.collection.concurrent.INode, scala.collection.concurrent.Gen, scala.collection.concurrent.TrieMap):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0129, code lost:
        if (r20 != false) goto L37;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public scala.Option<V> rec_remove(K r10, V r11, int r12, int r13, scala.collection.concurrent.INode<K, V> r14, scala.collection.concurrent.Gen r15, scala.collection.concurrent.TrieMap<K, V> r16) {
        /*
            Method dump skipped, instructions count: 668
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.concurrent.INode.rec_remove(java.lang.Object, java.lang.Object, int, int, scala.collection.concurrent.INode, scala.collection.concurrent.Gen, scala.collection.concurrent.TrieMap):scala.Option");
    }

    @Override // scala.collection.concurrent.BasicNode
    public String string(int i) {
        String str;
        Predef$ predef$ = Predef$.MODULE$;
        StringOps stringOps = new StringOps("%sINode -> %s");
        Predef$ predef$2 = Predef$.MODULE$;
        Predef$ predef$3 = Predef$.MODULE$;
        String $times = new StringOps("  ").$times(i);
        MainNode<K, V> mainNode = this.mainnode;
        if (mainNode == null) {
            str = "<null>";
        } else if (mainNode instanceof TNode) {
            TNode tNode = (TNode) mainNode;
            Predef$ predef$4 = Predef$.MODULE$;
            str = new StringOps("TNode(%s, %s, %d, !)").format(Predef$.MODULE$.genericWrapArray(new Object[]{tNode.m176k(), tNode.m175v(), BoxesRunTime.boxToInteger(tNode.m177hc())}));
        } else if (mainNode instanceof CNode) {
            str = ((CNode) mainNode).string(i);
        } else if (mainNode instanceof LNode) {
            str = ((LNode) mainNode).string(i);
        } else {
            Predef$ predef$5 = Predef$.MODULE$;
            str = new StringOps("<elem: %s>").format(Predef$.MODULE$.genericWrapArray(new Object[]{mainNode}));
        }
        return stringOps.format(predef$2.genericWrapArray(new Object[]{$times, str}));
    }
}
