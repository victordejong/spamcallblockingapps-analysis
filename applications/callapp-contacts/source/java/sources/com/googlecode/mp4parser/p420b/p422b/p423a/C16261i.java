package com.googlecode.mp4parser.p420b.p422b.p423a;

import com.explorestack.protobuf.openrtb.LossReason;
import com.mopub.mobileads.resource.DrawableConstants;
import com.p102b.p103a.C3513c;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.logging.Logger;
import kotlinx.serialization.json.internal.JsonReaderKt;
import okhttp3.internal.p578ws.WebSocketProtocol;
@AbstractC16259g(m7537a = {19, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, JsonReaderKt.END_OBJ, WebSocketProtocol.PAYLOAD_SHORT, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE, 141, 142, 143, 144, 145, 146, 147, 148, 149, DrawableConstants.CtaButton.WIDTH_DIPS, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, LossReason.LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED_VALUE, LossReason.LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE, LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE_VALUE, LossReason.LOSS_REASON_CREATIVE_FILTERED_LANGUAGE_EXCLUSIONS_VALUE, LossReason.LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE, LossReason.f33015xd24c0733, LossReason.LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS_VALUE, LossReason.LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG_VALUE, LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_ALLOWED_IN_DEAL_VALUE, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253})
/* renamed from: com.googlecode.mp4parser.b.b.a.i */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/i.class */
public class C16261i extends AbstractC16254b {

    /* renamed from: b */
    private static Logger f57471b = Logger.getLogger(C16261i.class.getName());

    /* renamed from: a */
    ByteBuffer f57472a;

    @Override // com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b
    /* renamed from: a */
    final int mo7534a() {
        return this.f57472a.remaining();
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b
    /* renamed from: a */
    public final void mo7533a(ByteBuffer byteBuffer) throws IOException {
        this.f57472a = byteBuffer.slice();
        byteBuffer.position(byteBuffer.position() + this.f57472a.remaining());
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b
    public String toString() {
        return "ExtensionDescriptortag=" + this.f57435Y + ",bytes=" + C3513c.m37856a(this.f57472a.array()) + '}';
    }
}
