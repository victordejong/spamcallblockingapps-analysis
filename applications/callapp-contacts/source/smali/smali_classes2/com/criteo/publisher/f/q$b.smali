.class final Lcom/criteo/publisher/f/q$b;
.super Lcom/criteo/publisher/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/f/q;->a(Lcom/criteo/publisher/model/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/model/o;

.field final synthetic b:Lcom/criteo/publisher/f/q;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/f/q;Lcom/criteo/publisher/model/o;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/criteo/publisher/f/q$b;->b:Lcom/criteo/publisher/f/q;

    iput-object p2, p0, Lcom/criteo/publisher/f/q$b;->a:Lcom/criteo/publisher/model/o;

    invoke-direct {p0}, Lcom/criteo/publisher/v;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcom/criteo/publisher/model/o;JLcom/criteo/publisher/f/s$a;)V
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/criteo/publisher/model/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/criteo/publisher/f/s$a;->b(Ljava/lang/String;)Lcom/criteo/publisher/f/s$a;

    .line 116
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/criteo/publisher/f/s$a;->a(Ljava/lang/Long;)Lcom/criteo/publisher/f/s$a;

    .line 117
    invoke-virtual {p0}, Lcom/criteo/publisher/model/o;->c()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/criteo/publisher/f/s$a;->b(Ljava/lang/Integer;)Lcom/criteo/publisher/f/s$a;

    return-void
.end method

.method public static synthetic lambda$TfEdGFYgW8Q4z0Eqlh7kC8A8r0I(Lcom/criteo/publisher/model/o;JLcom/criteo/publisher/f/s$a;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/criteo/publisher/f/q$b;->a(Lcom/criteo/publisher/model/o;JLcom/criteo/publisher/f/s$a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 112
    iget-object v0, p0, Lcom/criteo/publisher/f/q$b;->b:Lcom/criteo/publisher/f/q;

    invoke-static {v0}, Lcom/criteo/publisher/f/q;->c(Lcom/criteo/publisher/f/q;)Lcom/criteo/publisher/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/criteo/publisher/h;->a()J

    move-result-wide v0

    .line 114
    iget-object v2, p0, Lcom/criteo/publisher/f/q$b;->b:Lcom/criteo/publisher/f/q;

    iget-object v3, p0, Lcom/criteo/publisher/f/q$b;->a:Lcom/criteo/publisher/model/o;

    new-instance v4, Lcom/criteo/publisher/f/-$$Lambda$q$b$TfEdGFYgW8Q4z0Eqlh7kC8A8r0I;

    invoke-direct {v4, v3, v0, v1}, Lcom/criteo/publisher/f/-$$Lambda$q$b$TfEdGFYgW8Q4z0Eqlh7kC8A8r0I;-><init>(Lcom/criteo/publisher/model/o;J)V

    invoke-static {v2, v3, v4}, Lcom/criteo/publisher/f/q;->a(Lcom/criteo/publisher/f/q;Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/f/w$a;)V

    return-void
.end method
