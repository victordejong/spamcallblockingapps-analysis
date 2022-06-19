.class public final Lcom/criteo/publisher/j0/b$b;
.super Lcom/criteo/publisher/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/j0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/j0/b;

.field private final b:Lcom/criteo/publisher/model/t;


# direct methods
.method private constructor <init>(Lcom/criteo/publisher/j0/b;Lcom/criteo/publisher/model/t;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/criteo/publisher/j0/b$b;->a:Lcom/criteo/publisher/j0/b;

    invoke-direct {p0}, Lcom/criteo/publisher/v;-><init>()V

    .line 188
    iput-object p2, p0, Lcom/criteo/publisher/j0/b$b;->b:Lcom/criteo/publisher/model/t;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/criteo/publisher/j0/b;Lcom/criteo/publisher/model/t;Lcom/criteo/publisher/j0/b$a;)V
    .locals 0

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/criteo/publisher/j0/b$b;-><init>(Lcom/criteo/publisher/j0/b;Lcom/criteo/publisher/model/t;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/criteo/publisher/j0/b$b;->a:Lcom/criteo/publisher/j0/b;

    invoke-static {v0}, Lcom/criteo/publisher/j0/b;->a(Lcom/criteo/publisher/j0/b;)Lcom/criteo/publisher/model/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/model/x;->a()Lcom/criteo/publisher/model/w;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/criteo/publisher/j0/b$b;->a:Lcom/criteo/publisher/j0/b;

    invoke-static {v1}, Lcom/criteo/publisher/j0/b;->b(Lcom/criteo/publisher/j0/b;)Lcom/criteo/publisher/j0/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/criteo/publisher/j0/g;->a(Lcom/criteo/publisher/model/w;)Lcom/criteo/publisher/model/y;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/criteo/publisher/j0/b$b;->b:Lcom/criteo/publisher/model/t;

    invoke-virtual {v1, v0}, Lcom/criteo/publisher/model/t;->b(Lcom/criteo/publisher/model/y;)V

    return-void
.end method
