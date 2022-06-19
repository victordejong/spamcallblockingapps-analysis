.class public Ln7/n$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln7/n$a;->a(Ljava/lang/Exception;Lk7/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk7/j;

.field public final synthetic b:Ln7/n$a;


# direct methods
.method public constructor <init>(Ln7/n$a;Lk7/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln7/n$a$a;->b:Ln7/n$a;

    iput-object p2, p0, Ln7/n$a$a;->a:Lk7/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Ln7/n$a$a;->b:Ln7/n$a;

    iget-object v0, v0, Ln7/n$a;->a:Ll7/b;

    iget-object v1, p0, Ln7/n$a$a;->a:Lk7/j;

    invoke-interface {v0, p1, v1}, Ll7/b;->a(Ljava/lang/Exception;Lk7/j;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Lk7/s;

    invoke-direct {p1}, Lk7/s;-><init>()V

    .line 3
    new-instance v0, Ln7/n$a$a$a;

    invoke-direct {v0, p0}, Ln7/n$a$a$a;-><init>(Ln7/n$a$a;)V

    .line 4
    iput-object v0, p1, Lk7/s;->b:Lk7/s$a;

    .line 5
    iget-object v0, p0, Ln7/n$a$a;->a:Lk7/j;

    invoke-interface {v0, p1}, Lk7/m;->b(Ll7/c;)V

    .line 6
    iget-object p1, p0, Ln7/n$a$a;->a:Lk7/j;

    new-instance v0, Ln7/n$a$a$b;

    invoke-direct {v0, p0}, Ln7/n$a$a$b;-><init>(Ln7/n$a$a;)V

    invoke-interface {p1, v0}, Lk7/m;->h(Ll7/a;)V

    return-void
.end method
