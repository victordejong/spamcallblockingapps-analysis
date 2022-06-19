.class final Lorg/mistergroup/shouldianswer/ui/main/a/a$f;
.super Ljava/lang/Object;
.source "ContactsFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/a/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/a/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/a/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a$f;->a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 218
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a$f;->a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

    const-string v0, "android.permission.READ_CONTACTS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method
