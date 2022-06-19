.class public Ld2/s1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld2/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    aget-object v0, p1, v0

    iput-object v0, p0, Ld2/s1$a;->a:Ljava/lang/String;

    const/4 v0, 0x2

    .line 3
    aget-object v0, p1, v0

    iput-object v0, p0, Ld2/s1$a;->b:Ljava/lang/String;

    const/4 v0, 0x4

    .line 4
    aget-object p1, p1, v0

    iput-object p1, p0, Ld2/s1$a;->c:Ljava/lang/String;

    return-void
.end method
