.class public final synthetic Lxy0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Laz0$a;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Laz0$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxy0;->a:Laz0$a;

    iput-object p2, p0, Lxy0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lxy0;->a:Laz0$a;

    iget-object v1, p0, Lxy0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laz0$a;->c(Ljava/lang/String;)V

    return-void
.end method
