.class public Ld2/o3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# instance fields
.field public final synthetic a:Ld2/r3;


# direct methods
.method public constructor <init>(Ld2/r3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/o3;->a:Ld2/r3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/o3;->a:Ld2/r3;

    invoke-static {v0, p1}, Ld2/r3;->a(Ld2/r3;Ld2/t0;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ld2/o3;->a:Ld2/r3;

    invoke-virtual {p1}, Ld2/r3;->c()Z

    :cond_0
    return-void
.end method
