.class public Ld2/w1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld2/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ld2/x1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ld2/x1;Ld2/v1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld2/w1$a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Ld2/w1$a;->b:Ld2/x1;

    return-void
.end method
