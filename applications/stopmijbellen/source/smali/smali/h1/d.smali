.class public final Lh1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg1/b$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lg1/b$b;)Lg1/b;
    .locals 4

    .line 1
    new-instance v0, Lh1/c;

    iget-object v1, p1, Lg1/b$b;->a:Landroid/content/Context;

    iget-object v2, p1, Lg1/b$b;->b:Ljava/lang/String;

    iget-object v3, p1, Lg1/b$b;->c:Lg1/b$a;

    iget-boolean p1, p1, Lg1/b$b;->d:Z

    invoke-direct {v0, v1, v2, v3, p1}, Lh1/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lg1/b$a;Z)V

    return-object v0
.end method
