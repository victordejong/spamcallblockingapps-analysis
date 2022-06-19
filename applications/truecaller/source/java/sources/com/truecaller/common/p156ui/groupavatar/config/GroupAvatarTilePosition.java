package com.truecaller.common.p156ui.groupavatar.config;

import android.graphics.RectF;
import kotlin.Metadata;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010��\n\u0002\b\t\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u00012\u00020\u0002B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;", "", "", "<init>", "(Ljava/lang/String;I)V", "Left", "Right", "TopLeft", "TopRight", "BottomLeft", "BottomRight", "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.common.ui.groupavatar.config.GroupAvatarTilePosition */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition.class */
public enum GroupAvatarTilePosition {
    Left { // from class: com.truecaller.common.ui.groupavatar.config.GroupAvatarTilePosition.c
        @Override // com.truecaller.common.p156ui.groupavatar.config.GroupAvatarTilePosition
        public RectF calculateBounds(float f, float f2) {
            return new RectF(0.0f, 0.0f, (f - f2) / 2.0f, f);
        }

        @Override // com.truecaller.common.p156ui.groupavatar.config.GroupAvatarTilePosition
        public RectF calculateMargin(float f) {
            return new RectF(f, 0.0f, 0.0f, 0.0f);
        }
    },
    Right { // from class: com.truecaller.common.ui.groupavatar.config.GroupAvatarTilePosition.d
        @Override // com.truecaller.common.p156ui.groupavatar.config.GroupAvatarTilePosition
        public RectF calculateBounds(float f, float f2) {
            return new RectF((f2 + f) / 2.0f, 0.0f, f, f);
        }

        @Override // com.truecaller.common.p156ui.groupavatar.config.GroupAvatarTilePosition
        public RectF calculateMargin(float f) {
            return new RectF(0.0f, 0.0f, f, 0.0f);
        }
    },
    TopLeft { // from class: com.truecaller.common.ui.groupavatar.config.GroupAvatarTilePosition.e
        @Override // com.truecaller.common.p156ui.groupavatar.config.GroupAvatarTilePosition
        public RectF calculateBounds(float f, float f2) {
            float f3 = (f - f2) / 2.0f;
            return new RectF(0.0f, 0.0f, f3, f3);
        }

        @Override // com.truecaller.common.p156ui.groupavatar.config.GroupAvatarTilePosition
        public RectF calculateMargin(float f) {
            return new RectF(f, f, 0.0f, 0.0f);
        }
    },
    TopRight { // from class: com.truecaller.common.ui.groupavatar.config.GroupAvatarTilePosition.f
        @Override // com.truecaller.common.p156ui.groupavatar.config.GroupAvatarTilePosition
        public RectF calculateBounds(float f, float f2) {
            return new RectF((f + f2) / 2.0f, 0.0f, f, (f - f2) / 2.0f);
        }

        @Override // com.truecaller.common.p156ui.groupavatar.config.GroupAvatarTilePosition
        public RectF calculateMargin(float f) {
            return new RectF(0.0f, f, f, 0.0f);
        }
    },
    BottomLeft { // from class: com.truecaller.common.ui.groupavatar.config.GroupAvatarTilePosition.a
        @Override // com.truecaller.common.p156ui.groupavatar.config.GroupAvatarTilePosition
        public RectF calculateBounds(float f, float f2) {
            return new RectF(0.0f, (f + f2) / 2.0f, (f - f2) / 2.0f, f);
        }

        @Override // com.truecaller.common.p156ui.groupavatar.config.GroupAvatarTilePosition
        public RectF calculateMargin(float f) {
            return new RectF(f, 0.0f, 0.0f, f);
        }
    },
    BottomRight { // from class: com.truecaller.common.ui.groupavatar.config.GroupAvatarTilePosition.b
        @Override // com.truecaller.common.p156ui.groupavatar.config.GroupAvatarTilePosition
        public RectF calculateBounds(float f, float f2) {
            float f3 = (f2 + f) / 2.0f;
            return new RectF(f3, f3, f, f);
        }

        @Override // com.truecaller.common.p156ui.groupavatar.config.GroupAvatarTilePosition
        public RectF calculateMargin(float f) {
            return new RectF(0.0f, 0.0f, f, f);
        }
    };

    /* synthetic */ GroupAvatarTilePosition(f fVar) {
        this();
    }

    public abstract /* synthetic */ RectF calculateBounds(float f, float f2);

    public abstract /* synthetic */ RectF calculateMargin(float f);
}
