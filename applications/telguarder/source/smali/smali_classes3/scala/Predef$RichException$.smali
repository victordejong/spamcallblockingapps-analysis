.class public Lscala/Predef$RichException$;
.super Ljava/lang/Object;
.source "Predef.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Predef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RichException$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/Predef$RichException$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Predef$RichException$;

    invoke-direct {v0}, Lscala/Predef$RichException$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Predef$RichException$;->MODULE$:Lscala/Predef$RichException$;

    return-void
.end method


# virtual methods
.method public final equals$extension(Ljava/lang/Throwable;Ljava/lang/Object;)Z
    .locals 3

    .line 279
    instance-of v0, p2, Lscala/Predef$RichException;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    check-cast p2, Lscala/Predef$RichException;

    invoke-virtual {p2}, Lscala/Predef$RichException;->scala$Predef$RichException$$self()Ljava/lang/Throwable;

    move-result-object p2

    :goto_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method public final getStackTraceString$extension(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .line 281
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object p1

    sget-object v0, Lscala/compat/Platform$;->MODULE$:Lscala/compat/Platform$;

    invoke-virtual {v0}, Lscala/compat/Platform$;->EOL()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lscala/compat/Platform$;->MODULE$:Lscala/compat/Platform$;

    invoke-virtual {v1}, Lscala/compat/Platform$;->EOL()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {p1, v2, v0, v1}, Lscala/collection/mutable/ArrayOps;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode$extension(Ljava/lang/Throwable;)I
    .locals 0

    .line 279
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method
