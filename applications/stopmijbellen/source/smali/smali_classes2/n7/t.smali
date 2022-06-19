.class public Ln7/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/a;


# instance fields
.field public final synthetic a:Lk7/j;


# direct methods
.method public constructor <init>(Ln7/s;Lk7/j;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln7/t;->a:Lk7/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln7/t;->a:Lk7/j;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lk7/o;->g(Ll7/a;)V

    .line 2
    iget-object p1, p0, Ln7/t;->a:Lk7/j;

    invoke-interface {p1}, Lk7/m;->close()V

    return-void
.end method
