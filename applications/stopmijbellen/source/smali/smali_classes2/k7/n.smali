.class public abstract Lk7/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7/m;


# instance fields
.field public a:Z

.field public b:Ll7/a;

.field public c:Ll7/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ll7/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk7/n;->c:Ll7/c;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final h(Ll7/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk7/n;->b:Ll7/a;

    return-void
.end method

.method public i()Ll7/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/n;->c:Ll7/c;

    return-object v0
.end method

.method public n(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk7/n;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lk7/n;->a:Z

    .line 3
    iget-object v0, p0, Lk7/n;->b:Ll7/a;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Ll7/a;->a(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method
