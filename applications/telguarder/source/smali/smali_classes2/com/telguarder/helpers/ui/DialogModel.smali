.class public Lcom/telguarder/helpers/ui/DialogModel;
.super Ljava/lang/Object;
.source "DialogModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/helpers/ui/DialogModel$DialogType;
    }
.end annotation


# instance fields
.field public activity:Landroid/app/Activity;

.field public dialogEventListener:Lcom/telguarder/helpers/ui/DialogEventListener;

.field public dialogType:Lcom/telguarder/helpers/ui/DialogModel$DialogType;

.field public message:Ljava/lang/String;

.field public negativeText:Ljava/lang/String;

.field public positiveText:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dialogModelOfErrorData(Lcom/telguarder/helpers/errorhandling/ErrorModel;)Lcom/telguarder/helpers/ui/DialogModel;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/telguarder/helpers/errorhandling/ErrorModel;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/telguarder/helpers/errorhandling/ErrorModel;->title:Ljava/lang/String;

    iget-object p0, p0, Lcom/telguarder/helpers/errorhandling/ErrorModel;->message:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/telguarder/helpers/ui/DialogModel;->dialogModelOfTitleAndMessage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/telguarder/helpers/ui/DialogModel;

    move-result-object p0

    return-object p0
.end method

.method public static dialogModelOfTitleAndMessage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/telguarder/helpers/ui/DialogModel;
    .locals 1

    .line 32
    new-instance v0, Lcom/telguarder/helpers/ui/DialogModel;

    invoke-direct {v0}, Lcom/telguarder/helpers/ui/DialogModel;-><init>()V

    .line 34
    iput-object p0, v0, Lcom/telguarder/helpers/ui/DialogModel;->activity:Landroid/app/Activity;

    .line 35
    iput-object p1, v0, Lcom/telguarder/helpers/ui/DialogModel;->title:Ljava/lang/String;

    .line 36
    iput-object p2, v0, Lcom/telguarder/helpers/ui/DialogModel;->message:Ljava/lang/String;

    .line 37
    sget-object p1, Lcom/telguarder/helpers/ui/DialogModel$DialogType;->POSITIVE:Lcom/telguarder/helpers/ui/DialogModel$DialogType;

    iput-object p1, v0, Lcom/telguarder/helpers/ui/DialogModel;->dialogType:Lcom/telguarder/helpers/ui/DialogModel$DialogType;

    const-string p1, "OK"

    .line 38
    iput-object p1, v0, Lcom/telguarder/helpers/ui/DialogModel;->positiveText:Ljava/lang/String;

    const/high16 p1, 0x1040000

    .line 39
    invoke-static {p0, p1}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/telguarder/helpers/ui/DialogModel;->negativeText:Ljava/lang/String;

    return-object v0
.end method
