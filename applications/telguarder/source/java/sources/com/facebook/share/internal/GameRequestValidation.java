package com.facebook.share.internal;

import com.facebook.internal.Validate;
import com.facebook.share.model.GameRequestContent;
/* loaded from: classes-dex2jar.jar:com/facebook/share/internal/GameRequestValidation.class */
public class GameRequestValidation {
    public static void validate(GameRequestContent gameRequestContent) {
        Validate.notNull(gameRequestContent.getMessage(), "message");
        if (!((gameRequestContent.getObjectId() != null) ^ (gameRequestContent.getActionType() == GameRequestContent.ActionType.ASKFOR || gameRequestContent.getActionType() == GameRequestContent.ActionType.SEND))) {
            int i = 0;
            if (gameRequestContent.getRecipients() != null) {
                i = 1;
            }
            int i2 = i;
            if (gameRequestContent.getSuggestions() != null) {
                i2 = i + 1;
            }
            int i3 = i2;
            if (gameRequestContent.getFilters() != null) {
                i3 = i2 + 1;
            }
            if (i3 > 1) {
                throw new IllegalArgumentException("Parameters to, filters and suggestions are mutually exclusive");
            }
            return;
        }
        throw new IllegalArgumentException("Object id should be provided if and only if action type is send or askfor");
    }
}
