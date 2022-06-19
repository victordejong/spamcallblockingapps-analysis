.class public abstract Lfm0$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lfm0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENTZ)Z"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;)Lyl0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT)",
            "Lyl0;"
        }
    .end annotation
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lfm0;->e:Ljava/lang/Object;

    return-object v0
.end method
