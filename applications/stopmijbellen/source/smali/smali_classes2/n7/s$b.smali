.class public Ln7/s$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln7/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:Lu7/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/b<",
            "Ln7/g$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lu7/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/b<",
            "Ln7/s$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lu7/b;

    invoke-direct {v0}, Lu7/b;-><init>()V

    iput-object v0, p0, Ln7/s$b;->b:Lu7/b;

    .line 3
    new-instance v0, Lu7/b;

    invoke-direct {v0}, Lu7/b;-><init>()V

    iput-object v0, p0, Ln7/s$b;->c:Lu7/b;

    return-void
.end method
