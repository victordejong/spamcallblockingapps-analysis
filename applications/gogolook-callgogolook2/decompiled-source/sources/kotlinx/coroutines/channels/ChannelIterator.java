package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.p634w.AbstractC15044d;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\bf\u0018��*\u0006\b��\u0010\u0001 \u00012\u00020\u0002J\u0011\u0010\u0003\u001a\u00020\u0004H¦Bø\u0001��¢\u0006\u0002\u0010\u0005J\u000e\u0010\u0006\u001a\u00028��H¦\u0002¢\u0006\u0002\u0010\u0007J\u0013\u0010\b\u001a\u00028��H\u0097@ø\u0001��¢\u0006\u0004\b\u0006\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\t"}, m815d2 = {"Lkotlinx/coroutines/channels/ChannelIterator;", ExifInterface.LONGITUDE_EAST, "", "hasNext", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "next", "()Ljava/lang/Object;", "next0", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ChannelIterator.class */
public interface ChannelIterator<E> {

    @Metadata(m817bv = {1, 0, 3}, m814k = 3, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ChannelIterator$DefaultImpls.class */
    public static final class DefaultImpls {
        /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0062  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x008d  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0094  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static /* synthetic */ <E> java.lang.Object next(kotlinx.coroutines.channels.ChannelIterator<? extends E> r5, p626l.p634w.AbstractC15044d<? super E> r6) {
            /*
                r0 = r6
                boolean r0 = r0 instanceof kotlinx.coroutines.channels.ChannelIterator$next0$1
                if (r0 == 0) goto L_0x0025
                r0 = r6
                kotlinx.coroutines.channels.ChannelIterator$next0$1 r0 = (kotlinx.coroutines.channels.ChannelIterator$next0$1) r0
                r7 = r0
                r0 = r7
                int r0 = r0.label
                r8 = r0
                r0 = r8
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                r0 = r0 & r1
                if (r0 == 0) goto L_0x0025
                r0 = r7
                r1 = r8
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                int r1 = r1 + r2
                r0.label = r1
                r0 = r7
                r6 = r0
                goto L_0x002f
            L_0x0025:
                kotlinx.coroutines.channels.ChannelIterator$next0$1 r0 = new kotlinx.coroutines.channels.ChannelIterator$next0$1
                r1 = r0
                r2 = r5
                r3 = r6
                r1.<init>(r2, r3)
                r6 = r0
            L_0x002f:
                r0 = r6
                java.lang.Object r0 = r0.result
                r7 = r0
                java.lang.Object r0 = p626l.p634w.p635j.C15064c.m478a()
                r9 = r0
                r0 = r6
                int r0 = r0.label
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L_0x0062
                r0 = r8
                r1 = 1
                if (r0 != r1) goto L_0x0058
                r0 = r6
                java.lang.Object r0 = r0.L$0
                kotlinx.coroutines.channels.ChannelIterator r0 = (kotlinx.coroutines.channels.ChannelIterator) r0
                r5 = r0
                r0 = r7
                p626l.C14982l.m653a(r0)
                r0 = r7
                r6 = r0
                goto L_0x0083
            L_0x0058:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                r1 = r0
                java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                r1.<init>(r2)
                throw r0
            L_0x0062:
                r0 = r7
                p626l.C14982l.m653a(r0)
                r0 = r6
                r1 = r5
                r0.L$0 = r1
                r0 = r6
                r1 = 1
                r0.label = r1
                r0 = r5
                r1 = r6
                java.lang.Object r0 = r0.hasNext(r1)
                r7 = r0
                r0 = r7
                r6 = r0
                r0 = r7
                r1 = r9
                if (r0 != r1) goto L_0x0083
                r0 = r9
                return r0
            L_0x0083:
                r0 = r6
                java.lang.Boolean r0 = (java.lang.Boolean) r0
                boolean r0 = r0.booleanValue()
                if (r0 == 0) goto L_0x0094
                r0 = r5
                java.lang.Object r0 = r0.next()
                return r0
            L_0x0094:
                kotlinx.coroutines.channels.ClosedReceiveChannelException r0 = new kotlinx.coroutines.channels.ClosedReceiveChannelException
                r1 = r0
                java.lang.String r2 = "Channel was closed"
                r1.<init>(r2)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelIterator.DefaultImpls.next(kotlinx.coroutines.channels.ChannelIterator, l.w.d):java.lang.Object");
        }
    }

    Object hasNext(AbstractC15044d<? super Boolean> dVar);

    E next();

    /* synthetic */ Object next(AbstractC15044d<? super E> dVar);
}
