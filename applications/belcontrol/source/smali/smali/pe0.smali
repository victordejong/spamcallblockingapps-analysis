.class public final synthetic Lpe0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcarbon/widget/AutoCompleteEditText$d;


# instance fields
.field public final synthetic a:Lcarbon/widget/AutoCompleteLayout;


# direct methods
.method public synthetic constructor <init>(Lcarbon/widget/AutoCompleteLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpe0;->a:Lcarbon/widget/AutoCompleteLayout;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lpe0;->a:Lcarbon/widget/AutoCompleteLayout;

    invoke-virtual {v0, p1}, Lcarbon/widget/AutoCompleteLayout;->u(Ljava/util/List;)V

    return-void
.end method
