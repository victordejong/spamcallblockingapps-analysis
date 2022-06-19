.class public final Lcom/esotericsoftware/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/b/a$a;
    }
.end annotation


# static fields
.field public static a:Z = true

.field public static b:Z = false

.field public static c:Z = false

.field public static d:Z = false

.field public static e:Z = false

.field private static f:I = 0x3

.field private static g:Lcom/esotericsoftware/b/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 30
    sput-boolean v0, Lcom/esotericsoftware/b/a;->b:Z

    .line 32
    sput-boolean v0, Lcom/esotericsoftware/b/a;->c:Z

    const/4 v0, 0x0

    .line 34
    sput-boolean v0, Lcom/esotericsoftware/b/a;->d:Z

    .line 36
    sput-boolean v0, Lcom/esotericsoftware/b/a;->e:Z

    .line 78
    new-instance v0, Lcom/esotericsoftware/b/a$a;

    invoke-direct {v0}, Lcom/esotericsoftware/b/a$a;-><init>()V

    sput-object v0, Lcom/esotericsoftware/b/a;->g:Lcom/esotericsoftware/b/a$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .line 105
    sget-boolean v0, Lcom/esotericsoftware/b/a;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/b/a;->g:Lcom/esotericsoftware/b/a$a;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Lcom/esotericsoftware/b/a$a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 141
    sget-boolean v0, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/b/a;->g:Lcom/esotericsoftware/b/a$a;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/esotericsoftware/b/a$a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 133
    sget-boolean v0, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/b/a;->g:Lcom/esotericsoftware/b/a$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/esotericsoftware/b/a$a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 157
    sget-boolean v0, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/b/a;->g:Lcom/esotericsoftware/b/a$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/esotericsoftware/b/a$a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 149
    sget-boolean v0, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/b/a;->g:Lcom/esotericsoftware/b/a$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/esotericsoftware/b/a$a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
