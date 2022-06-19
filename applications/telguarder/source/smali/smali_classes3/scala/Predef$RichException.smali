.class public final Lscala/Predef$RichException;
.super Ljava/lang/Object;
.source "Predef.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Predef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RichException"
.end annotation


# instance fields
.field private final scala$Predef$RichException$$self:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lscala/Predef$RichException;->scala$Predef$RichException$$self:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 279
    sget-object v0, Lscala/Predef$RichException$;->MODULE$:Lscala/Predef$RichException$;

    invoke-virtual {p0}, Lscala/Predef$RichException;->scala$Predef$RichException$$self()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lscala/Predef$RichException$;->equals$extension(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getStackTraceString()Ljava/lang/String;
    .locals 2

    .line 281
    sget-object v0, Lscala/Predef$RichException$;->MODULE$:Lscala/Predef$RichException$;

    invoke-virtual {p0}, Lscala/Predef$RichException;->scala$Predef$RichException$$self()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/Predef$RichException$;->getStackTraceString$extension(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 279
    sget-object v0, Lscala/Predef$RichException$;->MODULE$:Lscala/Predef$RichException$;

    invoke-virtual {p0}, Lscala/Predef$RichException;->scala$Predef$RichException$$self()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/Predef$RichException$;->hashCode$extension(Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public scala$Predef$RichException$$self()Ljava/lang/Throwable;
    .locals 1

    .line 279
    iget-object v0, p0, Lscala/Predef$RichException;->scala$Predef$RichException$$self:Ljava/lang/Throwable;

    return-object v0
.end method
