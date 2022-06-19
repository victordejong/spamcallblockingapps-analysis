.class public Lk7/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk7/i;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Ljava/net/InetAddress;

.field public final synthetic b:Lk7/i;


# direct methods
.method public constructor <init>(Lk7/i;[Ljava/net/InetAddress;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk7/i$a;->b:Lk7/i;

    iput-object p2, p0, Lk7/i$a;->a:[Ljava/net/InetAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk7/i$a;->b:Lk7/i;

    iget-object v0, v0, Lk7/i;->b:Lm7/g;

    iget-object v1, p0, Lk7/i$a;->a:[Ljava/net/InetAddress;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lm7/g;->o(Ljava/lang/Exception;Ljava/lang/Object;)Z

    return-void
.end method
