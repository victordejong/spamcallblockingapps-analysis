.class public final synthetic Lfj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lnt$a;


# instance fields
.field public final a:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfj;->a:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lfj;->a:Ljava/lang/Exception;

    check-cast p1, Lhj;

    invoke-static {v0, p1}, Lgj;->i(Ljava/lang/Exception;Lhj;)V

    return-void
.end method
