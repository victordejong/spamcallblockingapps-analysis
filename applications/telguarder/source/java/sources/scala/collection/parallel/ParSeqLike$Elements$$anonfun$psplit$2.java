package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.ParSeqLike;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$Elements$$anonfun$psplit$2.class */
public final class ParSeqLike$Elements$$anonfun$psplit$2 extends AbstractFunction1<Tuple2<Object, Object>, ParSeqLike<T, Repr, Sequential>.Elements> implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ ParSeqLike.Elements $outer;

    public ParSeqLike$Elements$$anonfun$psplit$2(ParSeqLike<T, Repr, Sequential>.Elements elements) {
        Objects.requireNonNull(elements);
        this.$outer = elements;
    }

    public final ParSeqLike<T, Repr, Sequential>.Elements apply(Tuple2<Object, Object> tuple2) {
        if (tuple2 != null) {
            return new ParSeqLike<T, Repr, Sequential>.Elements
            /*  JADX ERROR: Method code generation error
                jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x000d: RETURN  
                  (wrap: scala.collection.parallel.ParSeqLike<T, Repr, Sequential>$Elements : 0x000a: CONSTRUCTOR  (r0v2 scala.collection.parallel.ParSeqLike<T, Repr, Sequential>$Elements A[REMOVE]) = 
                  (r5v0 'this' scala.collection.parallel.ParSeqLike$Elements$$anonfun$psplit$2 A[IMMUTABLE_TYPE, THIS])
                  (r6v0 'tuple2' scala.Tuple2<java.lang.Object, java.lang.Object>)
                 call: scala.collection.parallel.ParSeqLike$Elements$$anonfun$psplit$2$$anon$2.<init>(scala.collection.parallel.ParSeqLike$Elements$$anonfun$psplit$2, scala.Tuple2):void type: CONSTRUCTOR)
                 in method: scala.collection.parallel.ParSeqLike$Elements$$anonfun$psplit$2.apply(scala.Tuple2<java.lang.Object, java.lang.Object>):scala.collection.parallel.ParSeqLike<T, Repr, Sequential>$Elements, file: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$Elements$$anonfun$psplit$2.class
                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:287)
                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:250)
                	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:91)
                	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:80)
                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:123)
                	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:286)
                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:265)
                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:369)
                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:304)
                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:270)
                	at java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                	at java.util.ArrayList.forEach(ArrayList.java:1259)
                	at java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                	at java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                Caused by: java.lang.NullPointerException
                	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:776)
                	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:697)
                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:395)
                	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:141)
                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:117)
                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:104)
                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:345)
                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:280)
                	... 23 more
                */
            /*
                this = this;
                r0 = r6
                if (r0 == 0) goto Le
                scala.collection.parallel.ParSeqLike$Elements$$anonfun$psplit$2$$anon$2 r0 = new scala.collection.parallel.ParSeqLike$Elements$$anonfun$psplit$2$$anon$2
                r1 = r0
                r2 = r5
                r3 = r6
                r1.<init>(r2, r3)
                return r0
            Le:
                scala.MatchError r0 = new scala.MatchError
                r1 = r0
                r2 = r6
                r1.<init>(r2)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.collection.parallel.ParSeqLike$Elements$$anonfun$psplit$2.apply(scala.Tuple2):scala.collection.parallel.ParSeqLike$Elements");
        }

        public /* synthetic */ ParSeqLike.Elements scala$collection$parallel$ParSeqLike$Elements$$anonfun$$$outer() {
            return this.$outer;
        }
    }
