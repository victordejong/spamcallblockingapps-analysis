.class public final synthetic Lpc0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lhd0$a;


# instance fields
.field public final synthetic a:Lsc0;


# direct methods
.method public synthetic constructor <init>(Lsc0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpc0;->a:Lsc0;

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    iget-object v0, p0, Lpc0;->a:Lsc0;

    invoke-virtual {v0, p1}, Lsc0;->n(I)Z

    move-result p1

    return p1
.end method
