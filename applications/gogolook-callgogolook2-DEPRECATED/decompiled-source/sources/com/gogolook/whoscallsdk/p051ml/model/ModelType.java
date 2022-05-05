package com.gogolook.whoscallsdk.p051ml.model;

import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��2\u00020\u0001:\u0003\u0003\u0004\u0005B\u0007\b\u0002¢\u0006\u0002\u0010\u0002\u0082\u0001\u0003\u0006\u0007\b¨\u0006\t"}, m815d2 = {"Lcom/gogolook/whoscallsdk/ml/model/ModelType;", "", "()V", "NotAModel", "SmsFilterLocal", "SmsFilterRemote", "Lcom/gogolook/whoscallsdk/ml/model/ModelType$SmsFilterRemote;", "Lcom/gogolook/whoscallsdk/ml/model/ModelType$SmsFilterLocal;", "Lcom/gogolook/whoscallsdk/ml/model/ModelType$NotAModel;", "whoscallSDK_ml_release"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: com.gogolook.whoscallsdk.ml.model.ModelType */
/* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/model/ModelType.class */
public abstract class ModelType {

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m815d2 = {"Lcom/gogolook/whoscallsdk/ml/model/ModelType$NotAModel;", "Lcom/gogolook/whoscallsdk/ml/model/ModelType;", "()V", "whoscallSDK_ml_release"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: com.gogolook.whoscallsdk.ml.model.ModelType$NotAModel */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/model/ModelType$NotAModel.class */
    public static final class NotAModel extends ModelType {
        public static final NotAModel INSTANCE = new NotAModel();

        public NotAModel() {
            super(null);
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m815d2 = {"Lcom/gogolook/whoscallsdk/ml/model/ModelType$SmsFilterLocal;", "Lcom/gogolook/whoscallsdk/ml/model/ModelType;", "()V", "whoscallSDK_ml_release"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: com.gogolook.whoscallsdk.ml.model.ModelType$SmsFilterLocal */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/model/ModelType$SmsFilterLocal.class */
    public static final class SmsFilterLocal extends ModelType {
        public static final SmsFilterLocal INSTANCE = new SmsFilterLocal();

        public SmsFilterLocal() {
            super(null);
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m815d2 = {"Lcom/gogolook/whoscallsdk/ml/model/ModelType$SmsFilterRemote;", "Lcom/gogolook/whoscallsdk/ml/model/ModelType;", "()V", "whoscallSDK_ml_release"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: com.gogolook.whoscallsdk.ml.model.ModelType$SmsFilterRemote */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/model/ModelType$SmsFilterRemote.class */
    public static final class SmsFilterRemote extends ModelType {
        public static final SmsFilterRemote INSTANCE = new SmsFilterRemote();

        public SmsFilterRemote() {
            super(null);
        }
    }

    public ModelType() {
    }

    public /* synthetic */ ModelType(C15145g gVar) {
        this();
    }
}
