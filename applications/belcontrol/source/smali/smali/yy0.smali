.class public final synthetic Lyy0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Laz0$a;


# direct methods
.method public synthetic constructor <init>(Laz0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyy0;->a:Laz0$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lyy0;->a:Laz0$a;

    invoke-virtual {v0}, Laz0$a;->e()V

    return-void
.end method
