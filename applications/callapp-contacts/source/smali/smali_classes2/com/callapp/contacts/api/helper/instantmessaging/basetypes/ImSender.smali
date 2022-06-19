.class public interface abstract Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract canUseIm(Lcom/callapp/contacts/model/contact/ContactData;)Z
.end method

.method public abstract getAnalyticsNameLabel()Ljava/lang/String;
.end method

.method public abstract getImColor()I
.end method

.method public abstract getImIconResId()I
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getShareReferTexBody()Ljava/lang/String;
.end method

.method public abstract getShareReferTextSubject(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract getType()Lcom/callapp/contacts/manager/Singletons$SenderType;
.end method

.method public abstract hasIMAccount(Lcom/callapp/contacts/model/contact/ContactData;)Z
.end method

.method public abstract isAppInstalled()Z
.end method

.method public abstract openIm(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V
.end method

.method public abstract share(Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;)V
.end method
