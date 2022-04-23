package androidx.media2.common;

import androidx.core.e.d;
import androidx.media2.common.MediaItem;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/CallbackMediaItem.class */
public class CallbackMediaItem extends MediaItem {

    /* renamed from: a  reason: collision with root package name */
    public final b f2728a;

    /* loaded from: classes-dex2jar.jar:androidx/media2/common/CallbackMediaItem$a.class */
    public static final class a extends MediaItem.a {

        /* renamed from: a  reason: collision with root package name */
        b f2729a;

        public a(b bVar) {
            d.a(bVar);
            this.f2729a = bVar;
        }

        @Override // androidx.media2.common.MediaItem.a
        public final /* bridge */ /* synthetic */ MediaItem.a a(long j) {
            return (a) super.a(j);
        }

        @Override // androidx.media2.common.MediaItem.a
        public final /* bridge */ /* synthetic */ MediaItem.a a(MediaMetadata mediaMetadata) {
            return (a) super.a(mediaMetadata);
        }

        @Override // androidx.media2.common.MediaItem.a
        public final /* synthetic */ MediaItem a() {
            return new CallbackMediaItem(this);
        }

        @Override // androidx.media2.common.MediaItem.a
        public final /* bridge */ /* synthetic */ MediaItem.a b(long j) {
            return (a) super.b(j);
        }
    }

    CallbackMediaItem(a aVar) {
        super(aVar);
        this.f2728a = aVar.f2729a;
    }
}
