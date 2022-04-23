package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/DiffUtil.class */
public class DiffUtil {

    /* renamed from: a */
    private static final Comparator<Snake> f4500a = new Comparator<Snake>() { // from class: androidx.recyclerview.widget.DiffUtil.1
        /* renamed from: a */
        public int compare(Snake snake, Snake snake2) {
            int i = snake.f4515a - snake2.f4515a;
            int i2 = i;
            if (i == 0) {
                i2 = snake.f4516b - snake2.f4516b;
            }
            return i2;
        }
    };

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/DiffUtil$Callback.class */
    public static abstract class Callback {
        /* renamed from: a */
        public abstract boolean mo17801a(int i, int i2);

        /* renamed from: b */
        public abstract boolean mo17800b(int i, int i2);

        @Nullable
        /* renamed from: c */
        public Object mo17799c(int i, int i2) {
            return null;
        }

        /* renamed from: d */
        public abstract int mo17798d();

        /* renamed from: e */
        public abstract int mo17797e();
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/DiffUtil$DiffResult.class */
    public static class DiffResult {

        /* renamed from: a */
        private final List<Snake> f4501a;

        /* renamed from: b */
        private final int[] f4502b;

        /* renamed from: c */
        private final int[] f4503c;

        /* renamed from: d */
        private final Callback f4504d;

        /* renamed from: e */
        private final int f4505e;

        /* renamed from: f */
        private final int f4506f;

        /* renamed from: g */
        private final boolean f4507g;

        DiffResult(Callback callback, List<Snake> list, int[] iArr, int[] iArr2, boolean z) {
            this.f4501a = list;
            this.f4502b = iArr;
            this.f4503c = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(this.f4503c, 0);
            this.f4504d = callback;
            this.f4505e = callback.mo17797e();
            this.f4506f = callback.mo17798d();
            this.f4507g = z;
            m17796a();
            m17790g();
        }

        /* renamed from: a */
        private void m17796a() {
            Snake snake = this.f4501a.isEmpty() ? null : this.f4501a.get(0);
            if (snake == null || snake.f4515a != 0 || snake.f4516b != 0) {
                Snake snake2 = new Snake();
                snake2.f4515a = 0;
                snake2.f4516b = 0;
                snake2.f4518d = false;
                snake2.f4517c = 0;
                snake2.f4519e = false;
                this.f4501a.add(0, snake2);
            }
        }

        /* renamed from: b */
        private void m17795b(List<PostponedUpdate> list, ListUpdateCallback listUpdateCallback, int i, int i2, int i3) {
            if (!this.f4507g) {
                listUpdateCallback.mo17216b(i, i2);
                return;
            }
            while (true) {
                i2--;
                if (i2 >= 0) {
                    int i4 = i3 + i2;
                    int i5 = this.f4503c[i4] & 31;
                    if (i5 == 0) {
                        listUpdateCallback.mo17216b(i, 1);
                        for (PostponedUpdate postponedUpdate : list) {
                            postponedUpdate.f4509b++;
                        }
                    } else if (i5 == 4 || i5 == 8) {
                        int i6 = this.f4503c[i4] >> 5;
                        listUpdateCallback.mo17217a(m17788i(list, i6, true).f4509b, i);
                        if (i5 == 4) {
                            listUpdateCallback.mo17214d(i, 1, this.f4504d.mo17799c(i6, i4));
                        }
                    } else if (i5 == 16) {
                        list.add(new PostponedUpdate(i4, i, false));
                    } else {
                        throw new IllegalStateException("unknown flag for pos " + i4 + " " + Long.toBinaryString(i5));
                    }
                } else {
                    return;
                }
            }
        }

        /* renamed from: c */
        private void m17794c(List<PostponedUpdate> list, ListUpdateCallback listUpdateCallback, int i, int i2, int i3) {
            if (!this.f4507g) {
                listUpdateCallback.mo17215c(i, i2);
                return;
            }
            while (true) {
                i2--;
                if (i2 >= 0) {
                    int i4 = i3 + i2;
                    int i5 = this.f4502b[i4] & 31;
                    if (i5 == 0) {
                        listUpdateCallback.mo17215c(i + i2, 1);
                        for (PostponedUpdate postponedUpdate : list) {
                            postponedUpdate.f4509b--;
                        }
                    } else if (i5 == 4 || i5 == 8) {
                        int i6 = this.f4502b[i4] >> 5;
                        PostponedUpdate i7 = m17788i(list, i6, false);
                        listUpdateCallback.mo17217a(i + i2, i7.f4509b - 1);
                        if (i5 == 4) {
                            listUpdateCallback.mo17214d(i7.f4509b - 1, 1, this.f4504d.mo17799c(i4, i6));
                        }
                    } else if (i5 == 16) {
                        list.add(new PostponedUpdate(i4, i + i2, true));
                    } else {
                        throw new IllegalStateException("unknown flag for pos " + i4 + " " + Long.toBinaryString(i5));
                    }
                } else {
                    return;
                }
            }
        }

        /* renamed from: e */
        private void m17792e(int i, int i2, int i3) {
            if (this.f4502b[i - 1] == 0) {
                m17791f(i, i2, i3, false);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:36:0x00f6, code lost:
            continue;
         */
        /* renamed from: f */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean m17791f(int r6, int r7, int r8, boolean r9) {
            /*
                Method dump skipped, instructions count: 267
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.DiffUtil.DiffResult.m17791f(int, int, int, boolean):boolean");
        }

        /* renamed from: g */
        private void m17790g() {
            int i;
            int i2 = this.f4505e;
            int i3 = this.f4506f;
            for (int size = this.f4501a.size() - 1; size >= 0; size--) {
                Snake snake = this.f4501a.get(size);
                int i4 = snake.f4515a;
                int i5 = snake.f4517c;
                int i6 = snake.f4516b;
                if (this.f4507g) {
                    while (true) {
                        if (i2 > i4 + i5) {
                            m17792e(i2, i3, size);
                            i2--;
                        }
                    }
                    for (i = i3; i > i6 + i5; i--) {
                        m17789h(i2, i, size);
                    }
                }
                for (int i7 = 0; i7 < snake.f4517c; i7++) {
                    int i8 = snake.f4515a + i7;
                    int i9 = snake.f4516b + i7;
                    int i10 = this.f4504d.mo17801a(i8, i9) ? 1 : 2;
                    this.f4502b[i8] = (i9 << 5) | i10;
                    this.f4503c[i9] = (i8 << 5) | i10;
                }
                i2 = snake.f4515a;
                i3 = snake.f4516b;
            }
        }

        /* renamed from: h */
        private void m17789h(int i, int i2, int i3) {
            if (this.f4503c[i2 - 1] == 0) {
                m17791f(i, i2, i3, true);
            }
        }

        /* renamed from: i */
        private static PostponedUpdate m17788i(List<PostponedUpdate> list, int i, boolean z) {
            int size = list.size() - 1;
            while (size >= 0) {
                PostponedUpdate postponedUpdate = list.get(size);
                if (postponedUpdate.f4508a == i && postponedUpdate.f4510c == z) {
                    list.remove(size);
                    while (size < list.size()) {
                        list.get(size).f4509b += z ? 1 : -1;
                        size++;
                    }
                    return postponedUpdate;
                }
                size--;
            }
            return null;
        }

        /* renamed from: d */
        public void m17793d(@NonNull ListUpdateCallback listUpdateCallback) {
            BatchingListUpdateCallback batchingListUpdateCallback = listUpdateCallback instanceof BatchingListUpdateCallback ? (BatchingListUpdateCallback) listUpdateCallback : new BatchingListUpdateCallback(listUpdateCallback);
            List<PostponedUpdate> arrayList = new ArrayList<>();
            int i = this.f4505e;
            int i2 = this.f4506f;
            int size = this.f4501a.size();
            while (true) {
                size--;
                if (size >= 0) {
                    Snake snake = this.f4501a.get(size);
                    int i3 = snake.f4517c;
                    int i4 = snake.f4515a + i3;
                    int i5 = snake.f4516b + i3;
                    if (i4 < i) {
                        m17794c(arrayList, batchingListUpdateCallback, i4, i - i4, i4);
                    }
                    if (i5 < i2) {
                        m17795b(arrayList, batchingListUpdateCallback, i4, i2 - i5, i5);
                    }
                    for (int i6 = i3 - 1; i6 >= 0; i6--) {
                        int[] iArr = this.f4502b;
                        int i7 = snake.f4515a;
                        if ((iArr[i7 + i6] & 31) == 2) {
                            batchingListUpdateCallback.mo17214d(i7 + i6, 1, this.f4504d.mo17799c(i7 + i6, snake.f4516b + i6));
                        }
                    }
                    i = snake.f4515a;
                    i2 = snake.f4516b;
                } else {
                    batchingListUpdateCallback.m17844e();
                    return;
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/DiffUtil$ItemCallback.class */
    public static abstract class ItemCallback<T> {
        /* renamed from: a */
        public abstract boolean m17787a(@NonNull T t, @NonNull T t2);

        /* renamed from: b */
        public abstract boolean m17786b(@NonNull T t, @NonNull T t2);

        @Nullable
        /* renamed from: c */
        public Object m17785c(@NonNull T t, @NonNull T t2) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/DiffUtil$PostponedUpdate.class */
    public static class PostponedUpdate {

        /* renamed from: a */
        int f4508a;

        /* renamed from: b */
        int f4509b;

        /* renamed from: c */
        boolean f4510c;

        public PostponedUpdate(int i, int i2, boolean z) {
            this.f4508a = i;
            this.f4509b = i2;
            this.f4510c = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/DiffUtil$Range.class */
    public static class Range {

        /* renamed from: a */
        int f4511a;

        /* renamed from: b */
        int f4512b;

        /* renamed from: c */
        int f4513c;

        /* renamed from: d */
        int f4514d;

        public Range() {
        }

        public Range(int i, int i2, int i3, int i4) {
            this.f4511a = i;
            this.f4512b = i2;
            this.f4513c = i3;
            this.f4514d = i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/DiffUtil$Snake.class */
    public static class Snake {

        /* renamed from: a */
        int f4515a;

        /* renamed from: b */
        int f4516b;

        /* renamed from: c */
        int f4517c;

        /* renamed from: d */
        boolean f4518d;

        /* renamed from: e */
        boolean f4519e;

        Snake() {
        }
    }

    private DiffUtil() {
    }

    @NonNull
    /* renamed from: a */
    public static DiffResult m17805a(@NonNull Callback callback) {
        return m17804b(callback, true);
    }

    @NonNull
    /* renamed from: b */
    public static DiffResult m17804b(@NonNull Callback callback, boolean z) {
        int e = callback.mo17797e();
        int d = callback.mo17798d();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new Range(0, e, 0, d));
        int abs = e + d + Math.abs(e - d);
        int i = abs * 2;
        int[] iArr = new int[i];
        int[] iArr2 = new int[i];
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            Range range = (Range) arrayList2.remove(arrayList2.size() - 1);
            Snake c = m17803c(callback, range.f4511a, range.f4512b, range.f4513c, range.f4514d, iArr, iArr2, abs);
            if (c != null) {
                if (c.f4517c > 0) {
                    arrayList.add(c);
                }
                c.f4515a += range.f4511a;
                c.f4516b += range.f4513c;
                Range range2 = arrayList3.isEmpty() ? new Range() : (Range) arrayList3.remove(arrayList3.size() - 1);
                range2.f4511a = range.f4511a;
                range2.f4513c = range.f4513c;
                if (c.f4519e) {
                    range2.f4512b = c.f4515a;
                    range2.f4514d = c.f4516b;
                } else if (c.f4518d) {
                    range2.f4512b = c.f4515a - 1;
                    range2.f4514d = c.f4516b;
                } else {
                    range2.f4512b = c.f4515a;
                    range2.f4514d = c.f4516b - 1;
                }
                arrayList2.add(range2);
                if (!c.f4519e) {
                    int i2 = c.f4515a;
                    int i3 = c.f4517c;
                    range.f4511a = i2 + i3;
                    range.f4513c = c.f4516b + i3;
                } else if (c.f4518d) {
                    int i4 = c.f4515a;
                    int i5 = c.f4517c;
                    range.f4511a = i4 + i5 + 1;
                    range.f4513c = c.f4516b + i5;
                } else {
                    int i6 = c.f4515a;
                    int i7 = c.f4517c;
                    range.f4511a = i6 + i7;
                    range.f4513c = c.f4516b + i7 + 1;
                }
                arrayList2.add(range);
            } else {
                arrayList3.add(range);
            }
        }
        Collections.sort(arrayList, f4500a);
        return new DiffResult(callback, arrayList, iArr, iArr2, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00a1, code lost:
        if (r10[r0 - 1] < r10[r0 + 1]) goto L_0x00bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01a6, code lost:
        if (r11[r0 - 1] < r11[r0 + 1]) goto L_0x01c0;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.recyclerview.widget.DiffUtil.Snake m17803c(androidx.recyclerview.widget.DiffUtil.Callback r5, int r6, int r7, int r8, int r9, int[] r10, int[] r11, int r12) {
        /*
            Method dump skipped, instructions count: 633
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.DiffUtil.m17803c(androidx.recyclerview.widget.DiffUtil$Callback, int, int, int, int, int[], int[], int):androidx.recyclerview.widget.DiffUtil$Snake");
    }
}
