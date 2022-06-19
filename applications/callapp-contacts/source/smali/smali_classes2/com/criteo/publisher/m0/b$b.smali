.class public final Lcom/criteo/publisher/m0/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/m0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static final c:Lcom/criteo/publisher/m0/b$b;

.field private static final d:Lcom/criteo/publisher/m0/b$b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 165
    new-instance v0, Lcom/criteo/publisher/m0/b$b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/m0/b$b;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/criteo/publisher/m0/b$b;->c:Lcom/criteo/publisher/m0/b$b;

    .line 166
    new-instance v0, Lcom/criteo/publisher/m0/b$b;

    const-string v1, "00000000-0000-0000-0000-000000000000"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/m0/b$b;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/criteo/publisher/m0/b$b;->d:Lcom/criteo/publisher/m0/b$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/criteo/publisher/m0/b$b;->a:Ljava/lang/String;

    .line 181
    iput-boolean p2, p0, Lcom/criteo/publisher/m0/b$b;->b:Z

    return-void
.end method

.method static a()Lcom/criteo/publisher/m0/b$b;
    .locals 1

    .line 189
    sget-object v0, Lcom/criteo/publisher/m0/b$b;->d:Lcom/criteo/publisher/m0/b$b;

    return-object v0
.end method

.method static a(Ljava/lang/String;)Lcom/criteo/publisher/m0/b$b;
    .locals 2

    .line 185
    new-instance v0, Lcom/criteo/publisher/m0/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/criteo/publisher/m0/b$b;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method static b()Lcom/criteo/publisher/m0/b$b;
    .locals 1

    .line 193
    sget-object v0, Lcom/criteo/publisher/m0/b$b;->c:Lcom/criteo/publisher/m0/b$b;

    return-object v0
.end method
