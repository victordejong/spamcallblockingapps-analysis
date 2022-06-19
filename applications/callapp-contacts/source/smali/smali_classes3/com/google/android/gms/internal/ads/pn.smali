.class final Lcom/google/android/gms/internal/ads/pn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/pk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/pk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pn;->a:Lcom/google/android/gms/internal/ads/pk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/pn;->a:Lcom/google/android/gms/internal/ads/pk;

    .line 1037
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.EDIT"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p2

    .line 1038
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/pk;->b:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1039
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/pk;->f:Ljava/lang/String;

    const-string v1, "eventLocation"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1040
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/pk;->e:Ljava/lang/String;

    const-string v1, "description"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1041
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/pk;->c:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1042
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/pk;->c:J

    const-string v4, "beginTime"

    invoke-virtual {p2, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1043
    :cond_0
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/pk;->d:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 1044
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/pk;->d:J

    const-string p1, "endTime"

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_1
    const/high16 p1, 0x10000000

    .line 1045
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/pn;->a:Lcom/google/android/gms/internal/ads/pk;

    .line 1047
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/pk;->a:Landroid/content/Context;

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
