.class public final Lno0$h;
.super Lmi0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno0;->l0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmi0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .locals 1

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object p1

    if-nez p2, :cond_0

    invoke-static {}, Lno0;->x()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    rem-int/lit16 p2, p2, 0x3e8

    invoke-static {p2}, Lno0;->y(I)I

    const/4 p2, 0x0

    const-string v0, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {}, Lno0;->x()I

    move-result p2

    const-string v0, "OBJECT_SUFFIX"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lno0;->z()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-static {}, Lno0;->A()Lom0;

    move-result-object p1

    invoke-virtual {p1}, Lom0;->e()V

    :cond_0
    const/4 p1, 0x0

    const-string p2, "com.facebook.sdk.LikeActionController.DID_RESET"

    invoke-static {p1, p2}, Lno0;->B(Lno0;Ljava/lang/String;)V

    return-void
.end method
