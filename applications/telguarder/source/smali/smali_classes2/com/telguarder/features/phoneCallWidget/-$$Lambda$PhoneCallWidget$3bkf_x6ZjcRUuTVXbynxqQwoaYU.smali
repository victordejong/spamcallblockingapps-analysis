.class public final synthetic Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneCallWidget$3bkf_x6ZjcRUuTVXbynxqQwoaYU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneCallWidget$3bkf_x6ZjcRUuTVXbynxqQwoaYU;->f$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    iput-object p2, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneCallWidget$3bkf_x6ZjcRUuTVXbynxqQwoaYU;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneCallWidget$3bkf_x6ZjcRUuTVXbynxqQwoaYU;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneCallWidget$3bkf_x6ZjcRUuTVXbynxqQwoaYU;->f$3:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneCallWidget$3bkf_x6ZjcRUuTVXbynxqQwoaYU;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneCallWidget$3bkf_x6ZjcRUuTVXbynxqQwoaYU;->f$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneCallWidget$3bkf_x6ZjcRUuTVXbynxqQwoaYU;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneCallWidget$3bkf_x6ZjcRUuTVXbynxqQwoaYU;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneCallWidget$3bkf_x6ZjcRUuTVXbynxqQwoaYU;->f$3:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneCallWidget$3bkf_x6ZjcRUuTVXbynxqQwoaYU;->f$4:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->lambda$changeWidgetStateSecure$2$PhoneCallWidget(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
