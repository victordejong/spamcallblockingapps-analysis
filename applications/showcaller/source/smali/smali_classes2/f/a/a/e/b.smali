.class public final Lf/a/a/e/b;
.super Ljava/lang/Object;
.source "HanyuPinyinOutputFormat.java"


# instance fields
.field private a:Lf/a/a/e/d;

.field private b:Lf/a/a/e/a;

.field private c:Lf/a/a/e/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lf/a/a/e/b;->d()V

    return-void
.end method


# virtual methods
.method public a()Lf/a/a/e/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/b;->b:Lf/a/a/e/a;

    return-object v0
.end method

.method public b()Lf/a/a/e/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/b;->c:Lf/a/a/e/c;

    return-object v0
.end method

.method public c()Lf/a/a/e/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/b;->a:Lf/a/a/e/d;

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 1
    sget-object v0, Lf/a/a/e/d;->a:Lf/a/a/e/d;

    iput-object v0, p0, Lf/a/a/e/b;->a:Lf/a/a/e/d;

    .line 2
    sget-object v0, Lf/a/a/e/a;->b:Lf/a/a/e/a;

    iput-object v0, p0, Lf/a/a/e/b;->b:Lf/a/a/e/a;

    .line 3
    sget-object v0, Lf/a/a/e/c;->a:Lf/a/a/e/c;

    iput-object v0, p0, Lf/a/a/e/b;->c:Lf/a/a/e/c;

    return-void
.end method

.method public e(Lf/a/a/e/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b;->b:Lf/a/a/e/a;

    return-void
.end method

.method public f(Lf/a/a/e/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b;->c:Lf/a/a/e/c;

    return-void
.end method

.method public g(Lf/a/a/e/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b;->a:Lf/a/a/e/d;

    return-void
.end method
