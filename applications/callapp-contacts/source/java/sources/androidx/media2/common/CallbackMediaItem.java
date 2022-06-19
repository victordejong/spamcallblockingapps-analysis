package androidx.media2.common;

import androidx.core.p036e.C0833d;
import androidx.media2.common.MediaItem;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/CallbackMediaItem.class */
public class CallbackMediaItem extends MediaItem {

    /* renamed from: a */
    public final AbstractC1355b f5015a;

    /* renamed from: androidx.media2.common.CallbackMediaItem$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/CallbackMediaItem$a.class */
    public static final class C1343a extends MediaItem.C1346a {

        /* renamed from: a */
        AbstractC1355b f5016a;

        public C1343a(AbstractC1355b abstractC1355b) {
            C0833d.m44410a(abstractC1355b);
            this.f5016a = abstractC1355b;
        }

        @Override // androidx.media2.common.MediaItem.C1346a
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ MediaItem.C1346a mo43176a(long j) {
            return (C1343a) super.mo43176a(j);
        }

        @Override // androidx.media2.common.MediaItem.C1346a
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ MediaItem.C1346a mo43175a(MediaMetadata mediaMetadata) {
            return (C1343a) super.mo43175a(mediaMetadata);
        }

        @Override // androidx.media2.common.MediaItem.C1346a
        /* renamed from: a */
        public final /* synthetic */ MediaItem mo43177a() {
            return new CallbackMediaItem(this);
        }

        @Override // androidx.media2.common.MediaItem.C1346a
        /* renamed from: b */
        public final /* bridge */ /* synthetic */ MediaItem.C1346a mo43173b(long j) {
            return (C1343a) super.mo43173b(j);
        }
    }

    CallbackMediaItem(C1343a c1343a) {
        super(c1343a);
        this.f5015a = c1343a.f5016a;
    }
}
