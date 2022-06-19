.class final Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/widget/RadioGroup;",
        "kotlin.jvm.PlatformType",
        "i",
        "",
        "onCheckedChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$6;

    invoke-direct {v0}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$6;-><init>()V

    sput-object v0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$6;->a:Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$6;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    .line 209
    sget-object p1, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;->MONTH:Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;->getDaysInterval()I

    move-result p1

    goto :goto_0

    .line 208
    :pswitch_0
    sget-object p1, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;->HALF_MONTH:Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;->getDaysInterval()I

    move-result p1

    goto :goto_0

    .line 207
    :pswitch_1
    sget-object p1, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;->TWO_DAYS:Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;->getDaysInterval()I

    move-result p1

    .line 211
    :goto_0
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->hL:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0a64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
