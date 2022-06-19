.class final Landroidx/browser/trusted/g$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/trusted/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Landroid/app/Notification;

.field public final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Landroidx/browser/trusted/g$d;->a:Ljava/lang/String;

    .line 196
    iput p2, p0, Landroidx/browser/trusted/g$d;->b:I

    .line 197
    iput-object p3, p0, Landroidx/browser/trusted/g$d;->c:Landroid/app/Notification;

    .line 198
    iput-object p4, p0, Landroidx/browser/trusted/g$d;->d:Ljava/lang/String;

    return-void
.end method
