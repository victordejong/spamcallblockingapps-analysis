.class public Laa$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laa$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Laa$b;


# direct methods
.method public constructor <init>(Laa$b;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Laa$b$a;->b:Laa$b;

    iput-object p2, p0, Laa$b$a;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Laa$b$a;->b:Laa$b;

    iget-object v0, v0, Laa$b;->c:Laa$d;

    iget-object v1, p0, Laa$b$a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Laa$d;->a(Ljava/lang/Object;)V

    return-void
.end method
