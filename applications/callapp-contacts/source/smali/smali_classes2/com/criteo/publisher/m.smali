.class public final Lcom/criteo/publisher/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/criteo/publisher/model/a0;

.field final b:Lcom/criteo/publisher/Criteo;

.field final c:Lcom/criteo/publisher/j/a;

.field final d:Lcom/criteo/publisher/l/d;

.field private final e:Lcom/criteo/publisher/model/u;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/model/a0;Lcom/criteo/publisher/j/a;Lcom/criteo/publisher/Criteo;Lcom/criteo/publisher/l/d;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/criteo/publisher/m;->a:Lcom/criteo/publisher/model/a0;

    .line 58
    iput-object p2, p0, Lcom/criteo/publisher/m;->c:Lcom/criteo/publisher/j/a;

    .line 59
    iput-object p3, p0, Lcom/criteo/publisher/m;->b:Lcom/criteo/publisher/Criteo;

    .line 60
    invoke-virtual {p3}, Lcom/criteo/publisher/Criteo;->getDeviceInfo()Lcom/criteo/publisher/model/u;

    move-result-object p1

    iput-object p1, p0, Lcom/criteo/publisher/m;->e:Lcom/criteo/publisher/model/u;

    .line 61
    iput-object p4, p0, Lcom/criteo/publisher/m;->d:Lcom/criteo/publisher/l/d;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/criteo/publisher/m;->d:Lcom/criteo/publisher/l/d;

    sget-object v1, Lcom/criteo/publisher/o;->b:Lcom/criteo/publisher/o;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/l/d;->a(Lcom/criteo/publisher/o;)V

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/criteo/publisher/m;->a:Lcom/criteo/publisher/model/a0;

    iget-object v1, p0, Lcom/criteo/publisher/m;->e:Lcom/criteo/publisher/model/u;

    iget-object v2, p0, Lcom/criteo/publisher/m;->d:Lcom/criteo/publisher/l/d;

    invoke-virtual {v0, p1, v1, v2}, Lcom/criteo/publisher/model/a0;->a(Ljava/lang/String;Lcom/criteo/publisher/model/u;Lcom/criteo/publisher/l/d;)V

    return-void
.end method
