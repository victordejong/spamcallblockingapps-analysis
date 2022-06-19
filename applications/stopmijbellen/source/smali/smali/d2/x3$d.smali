.class public Ld2/x3$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/x3;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/x3;


# direct methods
.method public constructor <init>(Ld2/x3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/x3$d;->a:Ld2/x3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/x3$d;->a:Ld2/x3;

    invoke-virtual {v0, p1}, Ld2/x3;->s(Ld2/t0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ld2/x3$d$a;

    invoke-direct {v0, p0, p1}, Ld2/x3$d$a;-><init>(Ld2/x3$d;Ld2/t0;)V

    invoke-static {v0}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
