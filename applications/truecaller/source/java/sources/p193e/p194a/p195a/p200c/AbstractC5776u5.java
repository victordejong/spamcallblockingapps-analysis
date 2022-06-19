package p193e.p194a.p195a.p200c;

import android.content.Intent;
import android.os.Bundle;
import com.truecaller.messaging.conversation.atttachmentPicker.AttachmentPicker;
import com.truecaller.messaging.conversation.draft.DraftMode;
import com.truecaller.messaging.conversation.draft.DraftUri;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.linkpreviews.LinkMetaData;
import java.util.List;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
/* renamed from: e.a.a.c.u5 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/u5.class */
public abstract class AbstractC5776u5 extends AbstractC20576b<AbstractC5797w5> implements AttachmentPicker.AbstractC4170b {

    /* renamed from: e.a.a.c.u5$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/u5$a.class */
    public interface AbstractC5777a {
        /* renamed from: dc */
        void mo32625dc(DraftMode draftMode, List<DraftUri> list, List<BinaryEntity> list2, String str, boolean z, long j, int i);
    }

    /* renamed from: Hj */
    public abstract String[] mo32599Hj();

    /* renamed from: Ij */
    public abstract void mo32598Ij(AbstractC5777a abstractC5777a);

    /* renamed from: Jj */
    public abstract void mo32597Jj(int i);

    /* renamed from: Kj */
    public abstract void mo32596Kj();

    /* renamed from: Lj */
    public abstract void mo32595Lj(LinkMetaData linkMetaData);

    /* renamed from: hh */
    public abstract void mo32593hh(Bundle bundle);

    /* renamed from: m2 */
    public abstract void mo32592m2(Bundle bundle);

    public abstract void onActivityResult(int i, int i2, Intent intent);

    public abstract void onRequestPermissionsResult(int i, String[] strArr, int[] iArr);

    public abstract void onStop();
}
