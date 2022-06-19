.class public final Ly4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/api/AppMeasurementSdk$OnEventListener;


# instance fields
.field public final synthetic a:Ly4/c;


# direct methods
.method public constructor <init>(Ly4/c;)V
    .locals 0

    iput-object p1, p0, Ly4/b;->a:Ly4/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 0

    iget-object p1, p0, Ly4/b;->a:Ly4/c;

    iget-object p1, p1, Ly4/c;->a:Ljava/util/Set;

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    .line 2
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 3
    sget-object p3, Ly4/a;->a:Ljava/util/Set;

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzgr;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    move-object p2, p3

    :cond_1
    const-string p3, "events"

    .line 5
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Ly4/b;->a:Ly4/c;

    .line 6
    iget-object p2, p2, Ly4/c;->b:Lx4/a$b;

    const/4 p3, 0x2

    .line 7
    check-cast p2, La5/b;

    invoke-virtual {p2, p3, p1}, La5/b;->a(ILandroid/os/Bundle;)V

    return-void
.end method
