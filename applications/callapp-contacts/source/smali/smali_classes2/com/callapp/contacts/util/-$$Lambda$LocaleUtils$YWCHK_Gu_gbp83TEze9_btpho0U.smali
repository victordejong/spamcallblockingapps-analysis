.class public final synthetic Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$YWCHK_Gu_gbp83TEze9_btpho0U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/play/core/tasks/a;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/google/android/play/core/splitinstall/a;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/splitinstall/a;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$YWCHK_Gu_gbp83TEze9_btpho0U;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$YWCHK_Gu_gbp83TEze9_btpho0U;->f$1:Lcom/google/android/play/core/splitinstall/a;

    iput-object p3, p0, Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$YWCHK_Gu_gbp83TEze9_btpho0U;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$YWCHK_Gu_gbp83TEze9_btpho0U;->f$3:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$YWCHK_Gu_gbp83TEze9_btpho0U;->f$4:Z

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/play/core/tasks/d;)V
    .locals 6

    iget-object v0, p0, Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$YWCHK_Gu_gbp83TEze9_btpho0U;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$YWCHK_Gu_gbp83TEze9_btpho0U;->f$1:Lcom/google/android/play/core/splitinstall/a;

    iget-object v2, p0, Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$YWCHK_Gu_gbp83TEze9_btpho0U;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$YWCHK_Gu_gbp83TEze9_btpho0U;->f$3:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/callapp/contacts/util/-$$Lambda$LocaleUtils$YWCHK_Gu_gbp83TEze9_btpho0U;->f$4:Z

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/util/LocaleUtils;->lambda$YWCHK_Gu_gbp83TEze9_btpho0U(Landroid/content/Context;Lcom/google/android/play/core/splitinstall/a;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/play/core/tasks/d;)V

    return-void
.end method
