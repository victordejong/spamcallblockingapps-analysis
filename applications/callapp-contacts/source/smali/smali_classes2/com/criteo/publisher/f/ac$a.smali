.class final Lcom/criteo/publisher/f/ac$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/f/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/f/ac;->a(Lcom/criteo/publisher/f/w;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/f/ac;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/f/ac;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/criteo/publisher/f/ac$a;->a:Lcom/criteo/publisher/f/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/criteo/publisher/f/s;)Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/criteo/publisher/f/ac$a;->a:Lcom/criteo/publisher/f/ac;

    invoke-static {v0}, Lcom/criteo/publisher/f/ac;->a(Lcom/criteo/publisher/f/ac;)Lcom/criteo/publisher/f/z;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/criteo/publisher/f/p;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
