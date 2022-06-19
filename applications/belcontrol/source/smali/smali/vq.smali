.class public final synthetic Lvq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lwq$a;


# direct methods
.method public constructor <init>(Lwq$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvq;->a:Lwq$a;

    return-void
.end method

.method public static a(Lwq$a;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lvq;

    invoke-direct {v0, p0}, Lvq;-><init>(Lwq$a;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lvq;->a:Lwq$a;

    invoke-interface {v0}, Lwq$a;->onPrepared()V

    return-void
.end method
