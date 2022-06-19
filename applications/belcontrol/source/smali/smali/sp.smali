.class public final synthetic Lsp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ltp;


# direct methods
.method public constructor <init>(Ltp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsp;->a:Ltp;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lsp;->a:Ltp;

    invoke-virtual {v0}, Ltp;->z()V

    return-void
.end method
