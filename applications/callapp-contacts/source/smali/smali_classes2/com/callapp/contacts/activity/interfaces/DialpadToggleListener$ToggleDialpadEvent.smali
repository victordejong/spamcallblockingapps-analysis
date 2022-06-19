.class public Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener$ToggleDialpadEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleDialpadEvent"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(ZZII)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener$ToggleDialpadEvent;->a:Z

    .line 20
    iput-boolean p2, p0, Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener$ToggleDialpadEvent;->b:Z

    .line 21
    iput p3, p0, Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener$ToggleDialpadEvent;->c:I

    .line 22
    iput p4, p0, Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener$ToggleDialpadEvent;->d:I

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener$ToggleDialpadEvent;)Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener$ToggleDialpadEvent;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener$ToggleDialpadEvent;)Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener$ToggleDialpadEvent;->b:Z

    return p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener$ToggleDialpadEvent;)I
    .locals 0

    .line 12
    iget p0, p0, Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener$ToggleDialpadEvent;->c:I

    return p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener$ToggleDialpadEvent;)I
    .locals 0

    .line 12
    iget p0, p0, Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener$ToggleDialpadEvent;->d:I

    return p0
.end method
