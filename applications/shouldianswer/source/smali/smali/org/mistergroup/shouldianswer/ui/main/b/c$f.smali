.class final Lorg/mistergroup/shouldianswer/ui/main/b/c$f;
.super Ljava/lang/Object;
.source "FavoritesFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/b/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/b/c;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/b/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c$f;->a:Lorg/mistergroup/shouldianswer/ui/main/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 187
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c$f;->a:Lorg/mistergroup/shouldianswer/ui/main/b/c;

    const-string v0, "android.permission.READ_CONTACTS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/mistergroup/shouldianswer/ui/main/b/c;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method
