.class public Lcom/criteo/publisher/f/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/criteo/publisher/f/z;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/f/z;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/criteo/publisher/f/ac;->a:Lcom/criteo/publisher/f/z;

    return-void
.end method

.method static synthetic a(Lcom/criteo/publisher/f/ac;)Lcom/criteo/publisher/f/z;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/criteo/publisher/f/ac;->a:Lcom/criteo/publisher/f/z;

    return-object p0
.end method


# virtual methods
.method final a(Lcom/criteo/publisher/f/w;Ljava/lang/String;)V
    .locals 1

    .line 40
    new-instance v0, Lcom/criteo/publisher/f/ac$a;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/f/ac$a;-><init>(Lcom/criteo/publisher/f/ac;)V

    invoke-virtual {p1, p2, v0}, Lcom/criteo/publisher/f/w;->a(Ljava/lang/String;Lcom/criteo/publisher/f/u;)V

    return-void
.end method
