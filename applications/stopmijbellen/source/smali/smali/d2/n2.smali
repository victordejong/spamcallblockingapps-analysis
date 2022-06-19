.class public Ld2/n2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# instance fields
.field public final synthetic a:Ld2/p2;


# direct methods
.method public constructor <init>(Ld2/p2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/n2;->a:Ld2/p2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/n2;->a:Ld2/p2;

    new-instance v1, Ld2/h2;

    invoke-direct {v1, p1, v0}, Ld2/h2;-><init>(Ld2/t0;Ld2/h2$a;)V

    invoke-virtual {v0, v1}, Ld2/p2;->b(Ld2/h2;)V

    return-void
.end method
