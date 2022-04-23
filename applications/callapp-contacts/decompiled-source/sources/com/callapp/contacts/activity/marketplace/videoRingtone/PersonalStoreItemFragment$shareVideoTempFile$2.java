package com.callapp.contacts.activity.marketplace.videoRingtone;

import com.callapp.contacts.util.IoUtils;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Ljava/io/File;", "invoke"}, k = 3, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$shareVideoTempFile$2.class */
final class PersonalStoreItemFragment$shareVideoTempFile$2 extends r implements Function0<File> {

    /* renamed from: a  reason: collision with root package name */
    public static final PersonalStoreItemFragment$shareVideoTempFile$2 f13385a = new PersonalStoreItemFragment$shareVideoTempFile$2();

    PersonalStoreItemFragment$shareVideoTempFile$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final /* synthetic */ File invoke() {
        return new File(IoUtils.getCacheFolder(), "call.app.mp4");
    }
}
