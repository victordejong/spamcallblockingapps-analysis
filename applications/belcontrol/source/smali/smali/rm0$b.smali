.class public Lrm0$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrm0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/net/Uri;

.field public c:Lrm0$c;

.field public d:Z

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "imageUri"

    invoke-static {p2, v0}, Lgn0;->l(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lrm0$b;->a:Landroid/content/Context;

    iput-object p2, p0, Lrm0$b;->b:Landroid/net/Uri;

    return-void
.end method

.method public static synthetic a(Lrm0$b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lrm0$b;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic b(Lrm0$b;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lrm0$b;->b:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic c(Lrm0$b;)Lrm0$c;
    .locals 0

    iget-object p0, p0, Lrm0$b;->c:Lrm0$c;

    return-object p0
.end method

.method public static synthetic d(Lrm0$b;)Z
    .locals 0

    iget-boolean p0, p0, Lrm0$b;->d:Z

    return p0
.end method

.method public static synthetic e(Lrm0$b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lrm0$b;->e:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public f()Lrm0;
    .locals 2

    new-instance v0, Lrm0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrm0;-><init>(Lrm0$b;Lrm0$a;)V

    return-object v0
.end method

.method public g(Z)Lrm0$b;
    .locals 0

    iput-boolean p1, p0, Lrm0$b;->d:Z

    return-object p0
.end method

.method public h(Lrm0$c;)Lrm0$b;
    .locals 0

    iput-object p1, p0, Lrm0$b;->c:Lrm0$c;

    return-object p0
.end method

.method public i(Ljava/lang/Object;)Lrm0$b;
    .locals 0

    iput-object p1, p0, Lrm0$b;->e:Ljava/lang/Object;

    return-object p0
.end method
